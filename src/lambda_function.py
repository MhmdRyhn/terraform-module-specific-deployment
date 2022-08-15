def handler(event, _):
    print("Module specific deployment test.")
    return {"originalEvent": event}
