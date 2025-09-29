-- Space Age Chunks
local chunks = {
    "carbonic-asteroid-chunk",
    "metallic-asteroid-chunk",
    "oxide-asteroid-chunk",
    "promethium-asteroid-chunk"
}

-- Modded Chunks
if mods["cupric-asteroids"] then
	table.insert(chunks, "cupric-asteroid-chunk")
end

if mods["More-Asteroids"] then
	table.insert(chunks, "scrap-asteroid-chunk")
	table.insert(chunks, "rock-asteroid-chunk")
	table.insert(chunks, "uranium-asteroid-chunk")
	table.insert(chunks, "chemical-asteroid-chunk")
	table.insert(chunks, "organic-asteroid-chunk")
	table.insert(chunks, "petrified-asteroid-chunk")
end

if mods["planet-muluna"] then
	table.insert(chunks, "anorthite-chunk")
end

if mods["secretas"] then
	table.insert(chunks, "auric-asteroid-chunk")
end

if mods["platformer"] then
	table.insert(chunks, "crudeic-asteroid-chunk")
	table.insert(chunks, "gleba-asteroid-chunk")
	table.insert(chunks, "fulgora-asteroid-chunk")
	table.insert(chunks, "vulcanus-asteroid-chunk")
	table.insert(chunks, "aquilo-asteroid-chunk")
end

if mods["tiberium-asteroids"] then
	table.insert(chunks, "tiberium-asteroid-chunk")
end 

-- Finalize and apply settings
for _, item in pairs(chunks) do 
    data.raw["item"][item].stack_size = settings.startup["stack-size"].value
    data.raw["item"][item].weight = settings.startup["chunk-weight"].value * kg
end
