defmodule Plausible.Stats do
  defdelegate breakdown(site, query, prop, metrics, pagination), to: Plausible.Stats.Breakdown
  defdelegate aggregate(site, query, metrics), to: Plausible.Stats.Aggregate
  defdelegate timeseries(site, query, metrics), to: Plausible.Stats.Timeseries
  defdelegate current_visitors(site), to: Plausible.Stats.CurrentVisitors
  defdelegate funnel(site, query, funnel), to: Plausible.Stats.Funnel

  defdelegate filter_suggestions(site, query, filter_name, filter_search),
    to: Plausible.Stats.FilterSuggestions
end
