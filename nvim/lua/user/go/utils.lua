local M = {}

M.handle_job_data = function(data)
  if not data then
    return nil
  end
  for _ = 1, 3, 1 do
    if data[#data] == '' then
      table.remove(data, #data)
    end
  end
  if #data < 1 then
    return nil
  end
  return data
end

return M