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

function Modal({ open, onClose, title, children, wide }) {
  if (!open) return null
  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 p-4" onClick={onClose}>
      <div className={`bg-white rounded-2xl shadow-2xl ${wide ? 'max-w-3xl' : 'max-w-lg'} w-full max-h-[90vh] overflow-y-auto p-6`} onClick={e => e.stopPropagation()}>
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
  const [file, setFile] = useState(null)
  const [saving, setSaving] = useState(false)

  async function handleSubmit(e) {
    e.preventDefault()
    if (!qty || parseInt(qty) <= 0) return
    setSaving(true)

    let document_url = null
    if (file) {
      const path = `receipts/${Date.now()}_${file.name}`
      const { error: uploadError } = await supabase.storage.from('documents').upload(path, file)
      if (uploadError) { setSaving(false); alert('Error subiendo archivo: ' + uploadError.message); return }
      document_url = supabase.storage.from('documents').getPublicUrl(path).data.publicUrl
    }

    const { error } = await supabase.from('receipts').insert({
      item_id: item.item_id,
      qty_received: parseInt(qty),
      received_date: date,
      received_by: receivedBy || null,
      invoice_ref: invoiceRef || null,
      notes: notes || null,
      document_url,
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
      <div>
        <label className="block text-sm font-medium mb-1">Firma de recibido del almacenista</label>
        <input type="file" accept="image/*,.pdf" onChange={e => setFile(e.target.files[0] || null)}
          className="w-full border rounded-lg px-3 py-2 text-sm" />
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
  const [file, setFile] = useState(null)
  const [saving, setSaving] = useState(false)

  async function handleSubmit(e) {
    e.preventDefault()
    if (!qty || parseInt(qty) <= 0) return
    setSaving(true)

    let document_url = null
    if (file) {
      const path = `deliveries/${Date.now()}_${file.name}`
      const { error: uploadError } = await supabase.storage.from('documents').upload(path, file)
      if (uploadError) { setSaving(false); alert('Error subiendo archivo: ' + uploadError.message); return }
      document_url = supabase.storage.from('documents').getPublicUrl(path).data.publicUrl
    }

    const { error } = await supabase.from('deliveries').insert({
      item_id: item.item_id,
      qty_delivered: parseInt(qty),
      delivered_date: date,
      delivered_by: deliveredBy || null,
      received_by_marriott: receivedByMarriott || null,
      notes: notes || null,
      document_url,
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
      <div>
        <label className="block text-sm font-medium mb-1">Remisión firmada por Marriott</label>
        <input type="file" accept="image/*,.pdf" onChange={e => setFile(e.target.files[0] || null)}
          className="w-full border rounded-lg px-3 py-2 text-sm" />
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

function BatchReceiptForm({ items, area, onClose, onSaved }) {
  const eligible = items.filter(i => i.qty_pending_arrival > 0)
  const [selected, setSelected] = useState(() => Object.fromEntries(eligible.map(i => [i.item_id, true])))
  const [qtys, setQtys] = useState(() => Object.fromEntries(eligible.map(i => [i.item_id, i.qty_pending_arrival])))
  const [date, setDate] = useState(new Date().toISOString().split('T')[0])
  const [receivedBy, setReceivedBy] = useState('')
  const [invoiceRef, setInvoiceRef] = useState('')
  const [file, setFile] = useState(null)
  const [notes, setNotes] = useState('')
  const [saving, setSaving] = useState(false)

  const selectedItems = eligible.filter(i => selected[i.item_id])
  const totalQty = selectedItems.reduce((sum, i) => sum + (parseInt(qtys[i.item_id]) || 0), 0)
  const allSelected = eligible.length > 0 && eligible.every(i => selected[i.item_id])

  function toggleAll() {
    const v = !allSelected
    setSelected(Object.fromEntries(eligible.map(i => [i.item_id, v])))
  }

  async function handleSubmit(e) {
    e.preventDefault()
    if (selectedItems.length === 0) { alert('Selecciona al menos un artículo'); return }
    setSaving(true)

    let document_url = null
    if (file) {
      const path = `receipt-batches/${Date.now()}_${file.name}`
      const { error: uploadError } = await supabase.storage.from('documents').upload(path, file)
      if (uploadError) { setSaving(false); alert('Error subiendo archivo: ' + uploadError.message); return }
      document_url = supabase.storage.from('documents').getPublicUrl(path).data.publicUrl
    }

    const { data: batchData, error: batchError } = await supabase
      .from('receipt_batches')
      .insert({ received_date: date, received_by: receivedBy || null, invoice_ref: invoiceRef || null, document_url, notes: notes || null })
      .select('id').single()
    if (batchError) { setSaving(false); alert('Error creando lote: ' + batchError.message); return }

    const { error: receiptsError } = await supabase.from('receipts').insert(
      selectedItems.map(i => ({
        item_id: i.item_id,
        qty_received: parseInt(qtys[i.item_id]) || 0,
        received_date: date,
        received_by: receivedBy || null,
        invoice_ref: invoiceRef || null,
        batch_id: batchData.id,
        document_url,
      }))
    )
    setSaving(false)
    if (receiptsError) { alert('Error guardando recepciones: ' + receiptsError.message); return }
    onSaved(); onClose()
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      <div>
        <div className="flex justify-between items-center mb-2">
          <span className="text-sm font-medium text-gray-700">Artículos con pendiente ({eligible.length})</span>
          <button type="button" onClick={toggleAll} className="text-xs text-blue-600 hover:underline">
            {allSelected ? 'Deseleccionar todos' : 'Seleccionar todos'}
          </button>
        </div>
        <div className="border rounded-lg divide-y max-h-60 overflow-y-auto">
          {eligible.length === 0
            ? <p className="text-sm text-gray-400 p-3">No hay artículos con pendiente de llegada</p>
            : eligible.map(item => (
              <div key={item.item_id} className="flex items-center gap-3 p-2.5">
                <input type="checkbox" checked={!!selected[item.item_id]}
                  onChange={e => setSelected(s => ({ ...s, [item.item_id]: e.target.checked }))}
                  className="h-4 w-4 rounded border-gray-300 shrink-0" />
                <div className="flex-1 min-w-0">
                  <div className="text-sm font-medium truncate">{item.description}</div>
                  <div className="text-xs text-gray-400">{item.code} · Pendiente: {item.qty_pending_arrival}</div>
                </div>
                <input type="number" min="1" max={item.qty_pending_arrival}
                  value={qtys[item.item_id] ?? ''}
                  onChange={e => setQtys(q => ({ ...q, [item.item_id]: e.target.value }))}
                  disabled={!selected[item.item_id]}
                  className="w-20 border rounded px-2 py-1 text-sm text-center disabled:opacity-40 shrink-0" />
              </div>
            ))
          }
        </div>
      </div>

      <div className="bg-blue-50 rounded-lg px-3 py-2 text-sm text-blue-700 font-medium">
        {selectedItems.length} artículos seleccionados · {totalQty} unidades totales
      </div>

      <div className="grid grid-cols-2 gap-3">
        <div>
          <label className="block text-sm font-medium mb-1">Fecha de recepción</label>
          <input type="date" value={date} onChange={e => setDate(e.target.value)}
            className="w-full border rounded-lg px-3 py-2 text-sm" />
        </div>
        <div>
          <label className="block text-sm font-medium mb-1">Recibió</label>
          <input type="text" value={receivedBy} onChange={e => setReceivedBy(e.target.value)}
            className="w-full border rounded-lg px-3 py-2 text-sm" placeholder="Nombre" />
        </div>
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Referencia factura</label>
        <input type="text" value={invoiceRef} onChange={e => setInvoiceRef(e.target.value)}
          className="w-full border rounded-lg px-3 py-2 text-sm" />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Notas</label>
        <textarea value={notes} onChange={e => setNotes(e.target.value)}
          className="w-full border rounded-lg px-3 py-2 text-sm" rows={2} />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Archivo adjunto (aplica a todo el lote)</label>
        <input type="file" accept="image/*,.pdf" onChange={e => setFile(e.target.files[0] || null)}
          className="w-full border rounded-lg px-3 py-2 text-sm" />
      </div>
      <div className="flex gap-3 pt-2">
        <button type="submit" disabled={saving || selectedItems.length === 0}
          className="flex-1 bg-blue-600 text-white rounded-lg py-2.5 font-medium hover:bg-blue-700 disabled:opacity-50">
          {saving ? 'Guardando...' : `Registrar lote (${selectedItems.length} artículos)`}
        </button>
        <button type="button" onClick={onClose} className="px-4 py-2.5 border rounded-lg hover:bg-gray-50">Cancelar</button>
      </div>
    </form>
  )
}

function BatchDeliveryForm({ items, area, onClose, onSaved }) {
  const eligible = items.filter(i => i.qty_in_warehouse > 0)
  const [selected, setSelected] = useState(() => Object.fromEntries(eligible.map(i => [i.item_id, true])))
  const [qtys, setQtys] = useState(() => Object.fromEntries(eligible.map(i => [i.item_id, i.qty_in_warehouse])))
  const [date, setDate] = useState(new Date().toISOString().split('T')[0])
  const [deliveredBy, setDeliveredBy] = useState('')
  const [receivedByMarriott, setReceivedByMarriott] = useState('')
  const [file, setFile] = useState(null)
  const [notes, setNotes] = useState('')
  const [saving, setSaving] = useState(false)

  const selectedItems = eligible.filter(i => selected[i.item_id])
  const totalQty = selectedItems.reduce((sum, i) => sum + (parseInt(qtys[i.item_id]) || 0), 0)
  const allSelected = eligible.length > 0 && eligible.every(i => selected[i.item_id])

  function toggleAll() {
    const v = !allSelected
    setSelected(Object.fromEntries(eligible.map(i => [i.item_id, v])))
  }

  async function handleSubmit(e) {
    e.preventDefault()
    if (selectedItems.length === 0) { alert('Selecciona al menos un artículo'); return }
    setSaving(true)

    let document_url = null
    if (file) {
      const path = `delivery-batches/${Date.now()}_${file.name}`
      const { error: uploadError } = await supabase.storage.from('documents').upload(path, file)
      if (uploadError) { setSaving(false); alert('Error subiendo archivo: ' + uploadError.message); return }
      document_url = supabase.storage.from('documents').getPublicUrl(path).data.publicUrl
    }

    const { data: batchData, error: batchError } = await supabase
      .from('delivery_batches')
      .insert({ delivered_date: date, delivered_by: deliveredBy || null, received_by_marriott: receivedByMarriott || null, document_url, notes: notes || null })
      .select('id').single()
    if (batchError) { setSaving(false); alert('Error creando lote: ' + batchError.message); return }

    const { error: deliveriesError } = await supabase.from('deliveries').insert(
      selectedItems.map(i => ({
        item_id: i.item_id,
        qty_delivered: parseInt(qtys[i.item_id]) || 0,
        delivered_date: date,
        delivered_by: deliveredBy || null,
        received_by_marriott: receivedByMarriott || null,
        batch_id: batchData.id,
        document_url,
      }))
    )
    setSaving(false)
    if (deliveriesError) { alert('Error guardando entregas: ' + deliveriesError.message); return }
    onSaved(); onClose()
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      <div>
        <div className="flex justify-between items-center mb-2">
          <span className="text-sm font-medium text-gray-700">Artículos en almacén ({eligible.length})</span>
          <button type="button" onClick={toggleAll} className="text-xs text-blue-600 hover:underline">
            {allSelected ? 'Deseleccionar todos' : 'Seleccionar todos'}
          </button>
        </div>
        <div className="border rounded-lg divide-y max-h-60 overflow-y-auto">
          {eligible.length === 0
            ? <p className="text-sm text-gray-400 p-3">No hay artículos en almacén para entregar</p>
            : eligible.map(item => (
              <div key={item.item_id} className="flex items-center gap-3 p-2.5">
                <input type="checkbox" checked={!!selected[item.item_id]}
                  onChange={e => setSelected(s => ({ ...s, [item.item_id]: e.target.checked }))}
                  className="h-4 w-4 rounded border-gray-300 shrink-0" />
                <div className="flex-1 min-w-0">
                  <div className="text-sm font-medium truncate">{item.description}</div>
                  <div className="text-xs text-gray-400">{item.code} · En almacén: {item.qty_in_warehouse}</div>
                </div>
                <input type="number" min="1" max={item.qty_in_warehouse}
                  value={qtys[item.item_id] ?? ''}
                  onChange={e => setQtys(q => ({ ...q, [item.item_id]: e.target.value }))}
                  disabled={!selected[item.item_id]}
                  className="w-20 border rounded px-2 py-1 text-sm text-center disabled:opacity-40 shrink-0" />
              </div>
            ))
          }
        </div>
      </div>

      <div className="bg-green-50 rounded-lg px-3 py-2 text-sm text-green-700 font-medium">
        {selectedItems.length} artículos seleccionados · {totalQty} unidades totales
      </div>

      <div className="grid grid-cols-2 gap-3">
        <div>
          <label className="block text-sm font-medium mb-1">Fecha de entrega</label>
          <input type="date" value={date} onChange={e => setDate(e.target.value)}
            className="w-full border rounded-lg px-3 py-2 text-sm" />
        </div>
        <div>
          <label className="block text-sm font-medium mb-1">Entregó (Woodpecker)</label>
          <input type="text" value={deliveredBy} onChange={e => setDeliveredBy(e.target.value)}
            className="w-full border rounded-lg px-3 py-2 text-sm" />
        </div>
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Recibió (Marriott)</label>
        <input type="text" value={receivedByMarriott} onChange={e => setReceivedByMarriott(e.target.value)}
          className="w-full border rounded-lg px-3 py-2 text-sm" />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Notas</label>
        <textarea value={notes} onChange={e => setNotes(e.target.value)}
          className="w-full border rounded-lg px-3 py-2 text-sm" rows={2} />
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Remisión firmada (aplica a todo el lote)</label>
        <input type="file" accept="image/*,.pdf" onChange={e => setFile(e.target.files[0] || null)}
          className="w-full border rounded-lg px-3 py-2 text-sm" />
      </div>
      <div className="flex gap-3 pt-2">
        <button type="submit" disabled={saving || selectedItems.length === 0}
          className="flex-1 bg-green-600 text-white rounded-lg py-2.5 font-medium hover:bg-green-700 disabled:opacity-50">
          {saving ? 'Guardando...' : `Registrar lote (${selectedItems.length} artículos)`}
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
        supabase.from('receipts').select('*, batch:receipt_batches(batch_number)').eq('item_id', item.item_id).order('received_date', { ascending: false }),
        supabase.from('deliveries').select('*, batch:delivery_batches(batch_number)').eq('item_id', item.item_id).order('delivered_date', { ascending: false }),
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
        <div className="text-gray-500">{item.area} | Marca: {item.brand_current} | Proveedor: {item.supplier}</div>
        <div className="text-gray-500">Pedido: {item.qty_ordered}</div>
      </div>
      <div>
        <h3 className="font-semibold text-blue-700 mb-2">📦 Recepciones en almacén ({receipts.length})</h3>
        {receipts.length === 0 ? <p className="text-sm text-gray-400">Sin recepciones</p> : (
          <div className="space-y-2">
            {receipts.map(r => (
              <div key={r.id} className="border rounded-lg p-3 text-sm">
                <div className="flex justify-between flex-wrap gap-1">
                  <span className="font-medium">{r.qty_received} unidades</span>
                  <div className="flex gap-2 text-gray-500">
                    {r.batch?.batch_number && <span className="text-blue-600 font-medium">Lote #{r.batch.batch_number}</span>}
                    <span>{r.received_date}</span>
                  </div>
                </div>
                {r.received_by && <div className="text-gray-500">Recibió: {r.received_by}</div>}
                {r.invoice_ref && <div className="text-gray-500">Ref: {r.invoice_ref}</div>}
                {r.notes && <div className="text-gray-400 mt-1">{r.notes}</div>}
                {r.document_url && (
                  <a href={r.document_url} target="_blank" rel="noopener noreferrer"
                    className="inline-block mt-1 text-blue-600 hover:underline">
                    📎 Ver documento
                  </a>
                )}
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
                <div className="flex justify-between flex-wrap gap-1">
                  <span className="font-medium">{d.qty_delivered} unidades</span>
                  <div className="flex gap-2 text-gray-500">
                    {d.batch?.batch_number && <span className="text-green-600 font-medium">Lote #{d.batch.batch_number}</span>}
                    <span>{d.delivered_date}</span>
                  </div>
                </div>
                {d.delivered_by && <div className="text-gray-500">Entregó: {d.delivered_by}</div>}
                {d.received_by_marriott && <div className="text-gray-500">Recibió Marriott: {d.received_by_marriott}</div>}
                {d.notes && <div className="text-gray-400 mt-1">{d.notes}</div>}
                {d.document_url && (
                  <a href={d.document_url} target="_blank" rel="noopener noreferrer"
                    className="inline-block mt-1 text-blue-600 hover:underline">
                    📎 Ver documento
                  </a>
                )}
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}

function areaStats(items) {
  const total = items.length
  const received = items.filter(i => i.status !== 'no_recibido' && i.status !== 'sin_pedido').length
  const delivered = items.filter(i => i.status === 'entregado_completo').length
  const inWarehouse = items.filter(i => i.status === 'en_almacen' || i.status === 'entrega_parcial').length
  const pctReceived = total ? Math.round((received / total) * 100) : 0
  const pctDelivered = total ? Math.round((delivered / total) * 100) : 0
  const byStatus = {}
  for (const i of items) byStatus[i.status] = (byStatus[i.status] || 0) + 1
  return { total, received, delivered, inWarehouse, pctReceived, pctDelivered, byStatus }
}

function AreaCard({ area, items, onClick }) {
  const s = areaStats(items)
  const allDone = s.pctDelivered === 100
  const allReceived = s.pctReceived === 100

  return (
    <button onClick={onClick}
      className="bg-white border rounded-xl p-4 text-left hover:shadow-md hover:border-blue-300 transition-all w-full">
      <div className="font-semibold text-gray-800 mb-1 truncate">{area}</div>
      <div className="text-xs text-gray-400 mb-3">{s.total} artículos</div>

      <div className="space-y-1.5">
        <div>
          <div className="flex justify-between text-xs mb-0.5">
            <span className="text-gray-500">Recibidos en almacén</span>
            <span className={allReceived ? 'text-green-600 font-medium' : 'text-gray-600'}>{s.received}/{s.total}</span>
          </div>
          <div className="h-1.5 bg-gray-100 rounded-full overflow-hidden">
            <div className={`h-full rounded-full ${allReceived ? 'bg-green-500' : 'bg-blue-500'}`}
              style={{ width: `${s.pctReceived}%` }} />
          </div>
        </div>
        <div>
          <div className="flex justify-between text-xs mb-0.5">
            <span className="text-gray-500">Entregados a Marriott</span>
            <span className={allDone ? 'text-green-600 font-medium' : 'text-gray-600'}>{s.delivered}/{s.total}</span>
          </div>
          <div className="h-1.5 bg-gray-100 rounded-full overflow-hidden">
            <div className={`h-full rounded-full ${allDone ? 'bg-green-500' : 'bg-emerald-400'}`}
              style={{ width: `${s.pctDelivered}%` }} />
          </div>
        </div>
      </div>

      {s.inWarehouse > 0 && (
        <div className="mt-2 text-xs text-blue-600 font-medium">{s.inWarehouse} listos para entregar</div>
      )}
      {allDone && (
        <div className="mt-2 text-xs text-green-600 font-medium">✓ Completado</div>
      )}
    </button>
  )
}

function EditItemForm({ item, onClose, onSaved }) {
  const [fields, setFields] = useState({
    code: item.code || '',
    item_code: item.item_code || '',
    description: item.description || '',
    description_2: item.description_2 || '',
    brand_current: item.brand_current || '',
    supplier: item.supplier || '',
    unit: item.unit || '',
    qty_ordered: item.qty_ordered ?? '',
    category: item.category || '',
    item_type: item.item_type || '',
    price_unit: item.price_unit ?? '',
    currency: item.currency || '',
    notes: item.notes || '',
  })
  const [saving, setSaving] = useState(false)

  function set(key) {
    return e => setFields(f => ({ ...f, [key]: e.target.value }))
  }

  async function handleSubmit(e) {
    e.preventDefault()
    setSaving(true)
    const payload = {
      ...fields,
      qty_ordered: fields.qty_ordered !== '' ? Number(fields.qty_ordered) : null,
      price_unit: fields.price_unit !== '' ? Number(fields.price_unit) : null,
    }
    const { error } = await supabase.from('items').update(payload).eq('id', item.item_id)
    setSaving(false)
    if (error) { alert('Error: ' + error.message); return }
    onSaved()
    onClose()
  }

  const row = (label, key, type = 'text', extra = {}) => (
    <div>
      <label className="block text-sm font-medium mb-1">{label}</label>
      <input type={type} value={fields[key]} onChange={set(key)}
        className="w-full border rounded-lg px-3 py-2 text-sm" {...extra} />
    </div>
  )

  return (
    <form onSubmit={handleSubmit} className="space-y-3">
      <div className="grid grid-cols-2 gap-3">
        {row('Código', 'code')}
        {row('Item Code', 'item_code')}
      </div>
      {row('Descripción', 'description')}
      {row('Descripción 2', 'description_2')}
      <div className="grid grid-cols-2 gap-3">
        {row('Marca', 'brand_current')}
        {row('Proveedor', 'supplier')}
      </div>
      <div className="grid grid-cols-2 gap-3">
        {row('Unidad', 'unit')}
        {row('Cantidad pedida', 'qty_ordered', 'number', { min: 0 })}
      </div>
      <div className="grid grid-cols-2 gap-3">
        {row('Categoría', 'category')}
        {row('Tipo', 'item_type')}
      </div>
      <div className="grid grid-cols-2 gap-3">
        {row('Precio unitario', 'price_unit', 'number', { step: '0.01', min: 0 })}
        {row('Moneda', 'currency')}
      </div>
      <div>
        <label className="block text-sm font-medium mb-1">Notas</label>
        <textarea value={fields.notes} onChange={set('notes')}
          className="w-full border rounded-lg px-3 py-2 text-sm" rows={2} />
      </div>
      <div className="flex gap-3 pt-2">
        <button type="submit" disabled={saving}
          className="flex-1 bg-blue-600 text-white rounded-lg py-2.5 font-medium hover:bg-blue-700 disabled:opacity-50">
          {saving ? 'Guardando...' : 'Guardar cambios'}
        </button>
        <button type="button" onClick={onClose} className="px-4 py-2.5 border rounded-lg hover:bg-gray-50">Cancelar</button>
      </div>
    </form>
  )
}

function ItemsTable({ items, onOpen }) {
  return (
    <div className="bg-white rounded-xl border overflow-x-auto">
      <table className="w-full text-sm">
        <thead>
          <tr className="border-b bg-gray-50">
            <th className="text-left p-3 font-semibold">Código</th>
            <th className="text-left p-3 font-semibold hidden md:table-cell">Item Code</th>
            <th className="text-left p-3 font-semibold">Descripción</th>
            <th className="text-left p-3 font-semibold hidden lg:table-cell">Marca</th>
            <th className="text-left p-3 font-semibold hidden lg:table-cell">Proveedor</th>
            <th className="text-center p-3 font-semibold">Pedido</th>
            <th className="text-center p-3 font-semibold">Recibido</th>
            <th className="text-center p-3 font-semibold">Almacén</th>
            <th className="text-center p-3 font-semibold">Entregado</th>
            <th className="text-center p-3 font-semibold">Status</th>
            <th className="text-center p-3 font-semibold">Acciones</th>
          </tr>
        </thead>
        <tbody>
          {items.map(item => (
            <tr key={item.item_id} className="border-b hover:bg-gray-50 transition-colors">
              <td className="p-3 font-mono text-xs">{item.code}</td>
              <td className="p-3 hidden md:table-cell font-mono text-xs text-gray-500">{item.item_code}</td>
              <td className="p-3">
                <button onClick={() => onOpen(item, 'history')} className="text-left hover:text-blue-600">
                  <div className="font-medium leading-tight">{item.description}</div>
                </button>
              </td>
              <td className="p-3 hidden lg:table-cell text-xs">{item.brand_current}</td>
              <td className="p-3 hidden lg:table-cell text-xs">{item.supplier}</td>
              <td className="p-3 text-center font-medium">{item.qty_ordered}</td>
              <td className="p-3 text-center">{item.qty_received}</td>
              <td className="p-3 text-center font-medium text-blue-600">{item.qty_in_warehouse}</td>
              <td className="p-3 text-center">{item.qty_delivered}</td>
              <td className="p-3 text-center"><StatusBadge status={item.status} /></td>
              <td className="p-3 text-center whitespace-nowrap">
                <button onClick={() => onOpen(item, 'edit')}
                  className="text-xs bg-gray-100 text-gray-700 px-2 py-1 rounded hover:bg-gray-200 mr-1"
                  title="Editar artículo">
                  ✏️
                </button>
                {item.qty_pending_arrival > 0 && (
                  <button onClick={() => onOpen(item, 'receipt')}
                    className="text-xs bg-blue-600 text-white px-2 py-1 rounded hover:bg-blue-700 mr-1">
                    📦 Recibir
                  </button>
                )}
                {item.qty_in_warehouse > 0 && (
                  <button onClick={() => onOpen(item, 'delivery')}
                    className="text-xs bg-green-600 text-white px-2 py-1 rounded hover:bg-green-700">
                    🏨 Entregar
                  </button>
                )}
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  )
}

export default function Home() {
  const [items, setItems] = useState([])
  const [loading, setLoading] = useState(true)
  const [view, setView] = useState('areas') // 'areas' | 'items'
  const [selectedArea, setSelectedArea] = useState(null)
  const [search, setSearch] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [modalItem, setModalItem] = useState(null)
  const [modalType, setModalType] = useState(null)

  const loadData = useCallback(async () => {
    let all = []
    let from = 0
    while (true) {
      const { data, error } = await supabase.from('inventory_status').select('*').order('item_id', { ascending: true }).range(from, from + 999)
      if (error) { console.error(error); break }
      all = [...all, ...(data || [])]
      if (!data || data.length < 1000) break
      from += 1000
    }
    // Deduplicate by item_id — guards against duplicate rows in the DB
    const unique = Array.from(new Map(all.map(i => [i.item_id, i])).values())
    setItems(unique)
    setLoading(false)
  }, [])

  useEffect(() => { loadData() }, [loadData])

  const areas = [...new Set(items.map(i => i.area).filter(Boolean))].sort()

  const globalStats = {
    total: items.length,
    sin_pedido: items.filter(i => i.status === 'sin_pedido').length,
    no_recibido: items.filter(i => i.status === 'no_recibido').length,
    recepcion_parcial: items.filter(i => i.status === 'recepcion_parcial').length,
    en_almacen: items.filter(i => i.status === 'en_almacen').length,
    entrega_parcial: items.filter(i => i.status === 'entrega_parcial').length,
    entregado_completo: items.filter(i => i.status === 'entregado_completo').length,
    revisar: items.filter(i => i.status === 'revisar').length,
  }

  const areaItems = selectedArea ? items.filter(i => i.area === selectedArea) : items

  const filteredAreaItems = areaItems.filter(i => {
    if (statusFilter && i.status !== statusFilter) return false
    if (search) {
      const q = search.toLowerCase()
      return (
        (i.code || '').toLowerCase().includes(q) ||
        (i.description || '').toLowerCase().includes(q) ||
        (i.brand_current || '').toLowerCase().includes(q) ||
        (i.item_code || '').toLowerCase().includes(q) ||
        (i.supplier || '').toLowerCase().includes(q)
      )
    }
    return true
  })

  function openArea(area) {
    setSelectedArea(area)
    setSearch('')
    setStatusFilter('')
    setView('items')
  }

  function openGlobalStatus(status) {
    setSelectedArea(null)
    setSearch('')
    setStatusFilter(status)
    setView('items')
  }

  function backToAreas() {
    setView('areas')
    setSelectedArea(null)
    setSearch('')
    setStatusFilter('')
  }

  function openModal(item, type) {
    setModalItem(item)
    setModalType(type)
  }

  function openBatchModal(type) {
    setModalItem({ _batch: true })
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
      <div className="mb-6 flex items-start justify-between">
        <div>
          {view === 'items' ? (
            <div>
              <button onClick={backToAreas} className="text-sm text-blue-600 hover:underline mb-1 flex items-center gap-1">
                ← Todas las áreas
              </button>
              <h1 className="text-2xl font-bold text-gray-900">
                {selectedArea || (statusFilter ? STATUS_LABELS[statusFilter] : 'Todos los artículos')}
              </h1>
              <p className="text-gray-500 text-sm">
                {selectedArea ? `${areaItems.length} artículos en esta área` : `${areaItems.length} artículos en total`}
              </p>
            </div>
          ) : (
            <div>
              <h1 className="text-2xl font-bold text-gray-900">OSE Tracker</h1>
              <p className="text-gray-500">St. Regis Costa Mujeres — Control de recepción y entrega</p>
            </div>
          )}
        </div>
        <div className="text-right text-xs text-gray-400 mt-1">
          {globalStats.total} artículos totales
        </div>
      </div>

      {/* Global stats (always visible, clickable) */}
      {(() => {
        const activeStatus = view === 'items' && !selectedArea ? statusFilter : null
        const btn = (status, count, colorClass, textClass, label) => (
          <button
            key={status}
            onClick={() => status ? openGlobalStatus(status) : (backToAreas())}
            className={`${colorClass} rounded-lg p-3 text-center transition-all hover:shadow-md hover:scale-[1.02] ${activeStatus === status ? 'ring-2 ring-offset-1 ring-blue-500' : ''}`}
          >
            <div className={`text-xl font-bold ${textClass}`}>{count}</div>
            <div className={`text-xs ${textClass} opacity-80`}>{label}</div>
          </button>
        )
        return (
          <div className="grid grid-cols-4 md:grid-cols-8 gap-2 mb-6">
            {btn('', globalStats.total, 'bg-white border', 'text-gray-800', 'Total')}
            {globalStats.sin_pedido > 0 && btn('sin_pedido', globalStats.sin_pedido, 'bg-gray-100 border', 'text-gray-600', 'Sin pedido')}
            {btn('no_recibido', globalStats.no_recibido, 'bg-red-50 border border-red-200', 'text-red-700', 'No recibido')}
            {btn('recepcion_parcial', globalStats.recepcion_parcial, 'bg-amber-50 border border-amber-200', 'text-amber-700', 'Rec. parcial')}
            {btn('en_almacen', globalStats.en_almacen, 'bg-blue-50 border border-blue-200', 'text-blue-700', 'En almacén')}
            {btn('entrega_parcial', globalStats.entrega_parcial, 'bg-emerald-50 border border-emerald-200', 'text-emerald-700', 'Entrega parcial')}
            {btn('entregado_completo', globalStats.entregado_completo, 'bg-green-100 border border-green-300', 'text-green-700', 'Entregado')}
            {globalStats.revisar > 0 && btn('revisar', globalStats.revisar, 'bg-purple-50 border border-purple-200', 'text-purple-700', 'Revisar')}
          </div>
        )
      })()}

      {view === 'areas' && (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-3">
          {areas.map(area => (
            <AreaCard
              key={area}
              area={area}
              items={items.filter(i => i.area === area)}
              onClick={() => openArea(area)}
            />
          ))}
        </div>
      )}

      {view === 'items' && (
        <>
          {/* Area status bar */}
          {(() => {
            const s = areaStats(areaItems)
            return (
              <div className="bg-white border rounded-xl p-4 mb-4 flex flex-wrap gap-4 items-center">
                <div className="flex-1 min-w-[200px]">
                  <div className="flex justify-between text-xs mb-1">
                    <span className="text-gray-500">Recibidos en almacén</span>
                    <span className="font-medium">{s.received}/{s.total} ({s.pctReceived}%)</span>
                  </div>
                  <div className="h-2 bg-gray-100 rounded-full overflow-hidden">
                    <div className="h-full bg-blue-500 rounded-full" style={{ width: `${s.pctReceived}%` }} />
                  </div>
                </div>
                <div className="flex-1 min-w-[200px]">
                  <div className="flex justify-between text-xs mb-1">
                    <span className="text-gray-500">Entregados a Marriott</span>
                    <span className="font-medium">{s.delivered}/{s.total} ({s.pctDelivered}%)</span>
                  </div>
                  <div className="h-2 bg-gray-100 rounded-full overflow-hidden">
                    <div className="h-full bg-green-500 rounded-full" style={{ width: `${s.pctDelivered}%` }} />
                  </div>
                </div>
              </div>
            )
          })()}

          {/* Filters */}
          <div className="bg-white rounded-xl border p-3 mb-4 flex flex-col sm:flex-row gap-3">
            <input
              type="text"
              placeholder="Buscar por código, descripción, marca o proveedor..."
              value={search}
              onChange={e => setSearch(e.target.value)}
              className="flex-1 border rounded-lg px-3 py-2 text-sm"
            />
            <select value={statusFilter} onChange={e => setStatusFilter(e.target.value)}
              className="border rounded-lg px-3 py-2 text-sm min-w-[180px]">
              <option value="">Todos los estados</option>
              {Object.entries(STATUS_LABELS).map(([k, v]) => (
                <option key={k} value={k}>{v}</option>
              ))}
            </select>
          </div>

          <div className="flex items-center justify-between mb-3">
            <div className="text-sm text-gray-500">
              {filteredAreaItems.length} artículos{search || statusFilter ? ' (filtrados)' : ''}
            </div>
            {selectedArea && (
              <div className="flex gap-2">
                <button onClick={() => openBatchModal('batch-receipt')}
                  className="text-sm bg-blue-600 text-white px-3 py-1.5 rounded-lg hover:bg-blue-700 font-medium">
                  📦 Recepción por lote
                </button>
                <button onClick={() => openBatchModal('batch-delivery')}
                  className="text-sm bg-green-600 text-white px-3 py-1.5 rounded-lg hover:bg-green-700 font-medium">
                  🏨 Entrega por lote
                </button>
              </div>
            )}
          </div>

          <ItemsTable items={filteredAreaItems} onOpen={openModal} />
        </>
      )}

      {/* Modal */}
      <Modal
        open={!!modalItem}
        onClose={closeModal}
        wide={modalType === 'batch-receipt' || modalType === 'batch-delivery'}
        title={
          modalType === 'receipt' ? '📦 Registrar recepción en almacén' :
          modalType === 'delivery' ? '🏨 Registrar entrega a Marriott' :
          modalType === 'edit' ? '✏️ Editar artículo' :
          modalType === 'batch-receipt' ? `📦 Recepción por lote — ${selectedArea}` :
          modalType === 'batch-delivery' ? `🏨 Entrega por lote a Marriott — ${selectedArea}` :
          '📋 Historial de movimientos'
        }
      >
        {modalItem && modalType === 'receipt' && (
          <ReceiptForm item={modalItem} onClose={closeModal} onSaved={loadData} />
        )}
        {modalItem && modalType === 'delivery' && (
          <DeliveryForm item={modalItem} onClose={closeModal} onSaved={loadData} />
        )}
        {modalItem && modalType === 'edit' && (
          <EditItemForm item={modalItem} onClose={closeModal} onSaved={loadData} />
        )}
        {modalItem && modalType === 'batch-receipt' && (
          <BatchReceiptForm items={filteredAreaItems} area={selectedArea} onClose={closeModal} onSaved={loadData} />
        )}
        {modalItem && modalType === 'batch-delivery' && (
          <BatchDeliveryForm items={filteredAreaItems} area={selectedArea} onClose={closeModal} onSaved={loadData} />
        )}
        {modalItem && modalType === 'history' && (
          <ItemHistory item={modalItem} onClose={closeModal} />
        )}
      </Modal>
    </div>
  )
}
