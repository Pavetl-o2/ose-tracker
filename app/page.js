'use client'
import { useState, useEffect, useCallback } from 'react'
import { supabase } from '../lib/supabase'

const STATUS_LABELS = {
  sin_pedido: 'Sin pedido',
  no_recibido: 'No recibido',
  recepcion_parcial: 'Recepción parcial',
  en_almacen: 'En almacén',
  entrega_parcial: 'Entrega parcial',
  entregado_completo: 'Entregado',
  revisar: 'Revisar',
}

const STATUS_COLORS = {
  sin_pedido: 'bg-gray-100 text-gray-600',
  no_recibido: 'bg-red-50 text-red-700 border border-red-200',
  recepcion_parcial: 'bg-amber-50 text-amber-700 border border-amber-200',
  en_almacen: 'bg-blue-50 text-blue-700 border border-blue-200',
  entrega_parcial: 'bg-emerald-50 text-emerald-700 border border-emerald-200',
  entregado_completo: 'bg-green-100 text-green-800 border border-green-300',
  revisar: 'bg-purple-50 text-purple-700',
}

function StatusBadge({ status }) {
  return (
    <span className={`text-xs font-medium px-2 py-1 rounded-full whitespace-nowrap ${STATUS_COLORS[status] || 'bg-gray-100'}`}>
      {STATUS_LABELS[status] || status}
    </span>
  )
}

function StatCard({ label, value, color, onClick, active }) {
  return (
    <button
      onClick={onClick}
      className={`p-4 rounded-xl text-left transition-all ${active ? 'ring-2 ring-offset-2 ring-blue-500' : ''} ${color} hover:shadow-md`}
    >
      <div className="text-2xl font-bold">{value}</div>
      <div className="text-sm mt-1 opacity-80">{label}</div>
    </button>
  )
}

function Modal({ open, onClose, title, children }) {
  if (!open) return null
  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 p-4" onClick={onClose}>
      <div className="bg-white rounded-2xl shadow-2xl max-w-lg w-full max-h-[90vh] overflow-y-auto p-6" onClick={e => e.stopPropagation()}>
        <div className="flex justify-between items-center mb-4">
          <h2 className="text-lg font-bold">{title}</h2>
          <button onClick={onClose} className="text-gray-400 hover:text-gray-600 text-2xl leading-none">&times;</button>
        </div>
        {children}
      </div>
    </div>
  )
}

function ReceiptForm({ item, onClose, onSaved }) {
  const [qty, setQty] = useState('')
  const [receivedBy, setReceivedBy] = useState('')
  const [invoiceRef, setInvoiceRef] = useState('')
  const [notes, setNotes] = useState('')
  const [date, setDate] = useState(new Date().toISOString().split('T')[0])
  const [saving, setSaving] = useState(false)

  async function handleSubmit(e) {
    e.preventDefault()
    if (!qty || parseInt(qty) <= 0) return
    setSaving(true)
    const { error } = await supabase.from('receipts').insert({
      item_id: item.item_id,
      qty_received: parseInt(qty),
      received_date: date,
      received_by: receivedBy || null,
      invoice_ref: invoiceRef || null,
      notes: notes || null,
    })
    setSaving(false)
    if (error) { alert('Error: ' + error.message); return }
    onSaved()
    onClose()
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      <div className="bg-gray-50 rounded-lg p-3 text-sm">
        <div className="font-medium">{item.description}</div>
        <div className="text-gray-500 mt-1">
          Pedido: {item.qty_ordered} | Recibido: {item.qty_received} | Pendiente: {item.qty_pending_arrival}
        </div>
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Cantidad recibida *</label>
        <input type="number" min="1" max={item.qty_pending_arrival} value={qty} onChange={e => setQty(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" required autoFocus />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Fecha de recepción</label>
        <input type="date" value={date} onChange={e => setDate(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Recibió</label>
        <input type="text" value={receivedBy} onChange={e => setReceivedBy(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" placeholder="Nombre de quien recibió" />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Ref. factura/remisión</label>
        <input type="text" value={invoiceRef} onChange={e => setInvoiceRef(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Notas</label>
        <textarea value={notes} onChange={e => setNotes(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" rows={2} />
      </div>
      <div className="flex gap-3 pt-2">
        <button type="submit" disabled={saving}
          className="flex-1 bg-blue-600 text-white rounded-lg py-2.5 font-medium hover:bg-blue-700 disabled:opacity-50">
          {saving ? 'Guardando...' : 'Registrar recepción'}
        </button>
        <button type="button" onClick={onClose} className="px-4 py-2.5 border rounded-lg hover:bg-gray-50">Cancelar</button>
      </div>
    </form>
  )
}

function DeliveryForm({ item, onClose, onSaved }) {
  const [qty, setQty] = useState('')
  const [deliveredBy, setDeliveredBy] = useState('')
  const [receivedByMarriott, setReceivedByMarriott] = useState('')
  const [notes, setNotes] = useState('')
  const [date, setDate] = useState(new Date().toISOString().split('T')[0])
  const [saving, setSaving] = useState(false)

  async function handleSubmit(e) {
    e.preventDefault()
    if (!qty || parseInt(qty) <= 0) return
    setSaving(true)
    const { error } = await supabase.from('deliveries').insert({
      item_id: item.item_id,
      qty_delivered: parseInt(qty),
      delivered_date: date,
      delivered_by: deliveredBy || null,
      received_by_marriott: receivedByMarriott || null,
      notes: notes || null,
    })
    setSaving(false)
    if (error) { alert('Error: ' + error.message); return }
    onSaved()
    onClose()
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      <div className="bg-gray-50 rounded-lg p-3 text-sm">
        <div className="font-medium">{item.description}</div>
        <div className="text-gray-500 mt-1">
          En almacén: {item.qty_in_warehouse} | Ya entregado: {item.qty_delivered}
        </div>
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Cantidad a entregar *</label>
        <input type="number" min="1" max={item.qty_in_warehouse} value={qty} onChange={e => setQty(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" required autoFocus />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Fecha de entrega</label>
        <input type="date" value={date} onChange={e => setDate(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Entregó (Woodpecker)</label>
        <input type="text" value={deliveredBy} onChange={e => setDeliveredBy(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Recibió (Marriott)</label>
        <input type="text" value={receivedByMarriott} onChange={e => setReceivedByMarriott(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Notas</label>
        <textarea value={notes} onChange={e => setNotes(e.target.value)}
          className="w-full border rounded-lg px-3 py-2" rows={2} />
      </div>
      <div className="flex gap-3 pt-2">
        <button type="submit" disabled={saving}
          className="flex-1 bg-green-600 text-white rounded-lg py-2.5 font-medium hover:bg-green-700 disabled:opacity-50">
          {saving ? 'Guardando...' : 'Registrar entrega a Marriott'}
        </button>
        <button type="button" onClick={onClose} className="px-4 py-2.5 border rounded-lg hover:bg-gray-50">Cancelar</button>
      </div>
    </form>
  )
}

function ItemHistory({ item, onClose }) {
  const [receipts, setReceipts] = useState([])
  const [deliveries, setDeliveries] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    async function load() {
      const [r, d] = await Promise.all([
        supabase.from('receipts').select('*').eq('item_id', item.item_id).order('received_date', { ascending: false }),
        supabase.from('deliveries').select('*').eq('item_id', item.item_id).order('delivered_date', { ascending: false }),
      ])
      setReceipts(r.data || [])
      setDeliveries(d.data || [])
      setLoading(false)
    }
    load()
  }, [item.item_id])

  if (loading) return <div className="text-center py-8 text-gray-500">Cargando...</div>

  return (
    <div className="space-y-4">
      <div className="bg-gray-50 rounded-lg p-3 text-sm">
        <div className="font-medium">{item.code} — {item.description}</div>
        <div className="text-gray-500">{item.area} | Pedido: {item.qty_ordered}</div>
      </div>
      <div>
        <h3 className="font-semibold text-blue-700 mb-2">📦 Recepciones en almacén ({receipts.length})</h3>
        {receipts.length === 0 ? <p className="text-sm text-gray-400">Sin recepciones</p> : (
          <div className="space-y-2">
            {receipts.map(r => (
              <div key={r.id} className="border rounded-lg p-3 text-sm">
                <div className="flex justify-between">
                  <span className="font-medium">{r.qty_received} unidades</span>
                  <span className="text-gray-500">{r.received_date}</span>
                </div>
                {r.received_by && <div className="text-gray-500">Recibió: {r.received_by}</div>}
                {r.invoice_ref && <div className="text-gray-500">Ref: {r.invoice_ref}</div>}
                {r.notes && <div className="text-gray-400 mt-1">{r.notes}</div>}
              </div>
            ))}
          </div>
        )}
      </div>
      <div>
        <h3 className="font-semibold text-green-700 mb-2">🏨 Entregas a Marriott ({deliveries.length})</h3>
        {deliveries.length === 0 ? <p className="text-sm text-gray-400">Sin entregas</p> : (
          <div className="space-y-2">
            {deliveries.map(d => (
              <div key={d.id} className="border rounded-lg p-3 text-sm">
                <div className="flex justify-between">
                  <span className="font-medium">{d.qty_delivered} unidades</span>
                  <span className="text-gray-500">{d.delivered_date}</span>
                </div>
                {d.delivered_by && <div className="text-gray-500">Entregó: {d.delivered_by}</div>}
                {d.received_by_marriott && <div className="text-gray-500">Recibió Marriott: {d.received_by_marriott}</div>}
                {d.notes && <div className="text-gray-400 mt-1">{d.notes}</div>}
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}

export default function Home() {
  const [items, setItems] = useState([])
  const [areas, setAreas] = useState([])
  const [loading, setLoading] = useState(true)
  const [search, setSearch] = useState('')
  const [areaFilter, setAreaFilter] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [typeFilter, setTypeFilter] = useState('')
  const [modalItem, setModalItem] = useState(null)
  const [modalType, setModalType] = useState(null) // 'receipt' | 'delivery' | 'history'
  const [stats, setStats] = useState({})

  const loadData = useCallback(async () => {
    const { data, error } = await supabase.from('inventory_status').select('*')
    if (error) { console.error(error); return }
    setItems(data || [])

    // Compute stats
    const s = { total: 0, no_recibido: 0, recepcion_parcial: 0, en_almacen: 0, entrega_parcial: 0, entregado_completo: 0 }
    for (const i of (data || [])) {
      s.total++
      if (s[i.status] !== undefined) s[i.status]++
    }
    setStats(s)

    // Extract unique areas
    const areaSet = [...new Set((data || []).map(i => i.area))].sort()
    setAreas(areaSet)
    setLoading(false)
  }, [])

  useEffect(() => { loadData() }, [loadData])

  const filtered = items.filter(i => {
    if (areaFilter && i.area !== areaFilter) return false
    if (statusFilter && i.status !== statusFilter) return false
    if (typeFilter && i.item_type !== typeFilter) return false
    if (search) {
      const q = search.toLowerCase()
      return (
        (i.code || '').toLowerCase().includes(q) ||
        (i.description || '').toLowerCase().includes(q) ||
        (i.brand_current || '').toLowerCase().includes(q) ||
        (i.item_code || '').toLowerCase().includes(q)
      )
    }
    return true
  })

  const itemTypes = [...new Set(items.map(i => i.item_type).filter(Boolean))].sort()

  function openModal(item, type) {
    setModalItem(item)
    setModalType(type)
  }

  function closeModal() {
    setModalItem(null)
    setModalType(null)
  }

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto mb-4"></div>
          <p className="text-gray-500">Cargando inventario...</p>
        </div>
      </div>
    )
  }

  return (
    <div className="max-w-7xl mx-auto px-4 py-6">
      {/* Header */}
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-gray-900">OSE Tracker</h1>
        <p className="text-gray-500">St. Regis Costa Mujeres — Control de recepción y entrega</p>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-3 mb-6">
        <StatCard label="Total artículos" value={stats.total} color="bg-white border"
          onClick={() => setStatusFilter('')} active={!statusFilter} />
        <StatCard label="No recibido" value={stats.no_recibido} color="bg-red-50 border border-red-200"
          onClick={() => setStatusFilter(statusFilter === 'no_recibido' ? '' : 'no_recibido')} active={statusFilter === 'no_recibido'} />
        <StatCard label="Recepción parcial" value={stats.recepcion_parcial} color="bg-amber-50 border border-amber-200"
          onClick={() => setStatusFilter(statusFilter === 'recepcion_parcial' ? '' : 'recepcion_parcial')} active={statusFilter === 'recepcion_parcial'} />
        <StatCard label="En almacén" value={stats.en_almacen} color="bg-blue-50 border border-blue-200"
          onClick={() => setStatusFilter(statusFilter === 'en_almacen' ? '' : 'en_almacen')} active={statusFilter === 'en_almacen'} />
        <StatCard label="Entrega parcial" value={stats.entrega_parcial} color="bg-emerald-50 border border-emerald-200"
          onClick={() => setStatusFilter(statusFilter === 'entrega_parcial' ? '' : 'entrega_parcial')} active={statusFilter === 'entrega_parcial'} />
        <StatCard label="Entregado" value={stats.entregado_completo} color="bg-green-100 border border-green-300"
          onClick={() => setStatusFilter(statusFilter === 'entregado_completo' ? '' : 'entregado_completo')} active={statusFilter === 'entregado_completo'} />
      </div>

      {/* Filters */}
      <div className="bg-white rounded-xl border p-4 mb-4 flex flex-col md:flex-row gap-3">
        <input
          type="text"
          placeholder="Buscar por código, descripción o marca..."
          value={search}
          onChange={e => setSearch(e.target.value)}
          className="flex-1 border rounded-lg px-3 py-2 text-sm"
        />
        <select value={areaFilter} onChange={e => setAreaFilter(e.target.value)}
          className="border rounded-lg px-3 py-2 text-sm min-w-[180px]">
          <option value="">Todas las áreas</option>
          {areas.map(a => <option key={a} value={a}>{a}</option>)}
        </select>
        <select value={typeFilter} onChange={e => setTypeFilter(e.target.value)}
          className="border rounded-lg px-3 py-2 text-sm min-w-[150px]">
          <option value="">Todos los tipos</option>
          {itemTypes.map(t => <option key={t} value={t}>{t}</option>)}
        </select>
      </div>

      {/* Results count */}
      <div className="text-sm text-gray-500 mb-3">{filtered.length} artículos</div>

      {/* Table */}
      <div className="bg-white rounded-xl border overflow-x-auto">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b bg-gray-50">
              <th className="text-left p-3 font-semibold">Código</th>
              <th className="text-left p-3 font-semibold">Descripción</th>
              <th className="text-left p-3 font-semibold hidden md:table-cell">Área</th>
              <th className="text-left p-3 font-semibold hidden lg:table-cell">Marca</th>
              <th className="text-center p-3 font-semibold">Pedido</th>
              <th className="text-center p-3 font-semibold">Recibido</th>
              <th className="text-center p-3 font-semibold">Almacén</th>
              <th className="text-center p-3 font-semibold">Entregado</th>
              <th className="text-center p-3 font-semibold">Status</th>
              <th className="text-center p-3 font-semibold">Acciones</th>
            </tr>
          </thead>
          <tbody>
            {filtered.slice(0, 200).map(item => (
              <tr key={item.item_id} className="border-b hover:bg-gray-50 transition-colors">
                <td className="p-3 font-mono text-xs">{item.code}</td>
                <td className="p-3">
                  <button onClick={() => openModal(item, 'history')} className="text-left hover:text-blue-600">
                    <div className="font-medium">{item.description}</div>
                    <div className="text-xs text-gray-400 hidden md:block">{item.item_code}</div>
                  </button>
                </td>
                <td className="p-3 hidden md:table-cell text-xs">{item.area}</td>
                <td className="p-3 hidden lg:table-cell text-xs">{item.brand_current}</td>
                <td className="p-3 text-center font-medium">{item.qty_ordered}</td>
                <td className="p-3 text-center">{item.qty_received}</td>
                <td className="p-3 text-center font-medium text-blue-600">{item.qty_in_warehouse}</td>
                <td className="p-3 text-center">{item.qty_delivered}</td>
                <td className="p-3 text-center"><StatusBadge status={item.status} /></td>
                <td className="p-3 text-center whitespace-nowrap">
                  {item.qty_pending_arrival > 0 && (
                    <button onClick={() => openModal(item, 'receipt')}
                      className="text-xs bg-blue-600 text-white px-2 py-1 rounded hover:bg-blue-700 mr-1"
                      title="Registrar recepción en almacén">
                      📦 Recibir
                    </button>
                  )}
                  {item.qty_in_warehouse > 0 && (
                    <button onClick={() => openModal(item, 'delivery')}
                      className="text-xs bg-green-600 text-white px-2 py-1 rounded hover:bg-green-700"
                      title="Registrar entrega a Marriott">
                      🏨 Entregar
                    </button>
                  )}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
        {filtered.length > 200 && (
          <div className="p-4 text-center text-sm text-gray-500">
            Mostrando 200 de {filtered.length} — usa los filtros para refinar
          </div>
        )}
      </div>

      {/* Modal */}
      <Modal
        open={!!modalItem}
        onClose={closeModal}
        title={
          modalType === 'receipt' ? '📦 Registrar recepción en almacén' :
          modalType === 'delivery' ? '🏨 Registrar entrega a Marriott' :
          '📋 Historial de movimientos'
        }
      >
        {modalItem && modalType === 'receipt' && (
          <ReceiptForm item={modalItem} onClose={closeModal} onSaved={loadData} />
        )}
        {modalItem && modalType === 'delivery' && (
          <DeliveryForm item={modalItem} onClose={closeModal} onSaved={loadData} />
        )}
        {modalItem && modalType === 'history' && (
          <ItemHistory item={modalItem} onClose={closeModal} />
        )}
      </Modal>
    </div>
  )
}
