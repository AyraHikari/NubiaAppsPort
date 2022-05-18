.class public Lcn/nubia/touping/DataCollectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataCollectionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendSoundBy(Landroid/content/Context;)V

    .line 19
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendUSBSoundBy(Landroid/content/Context;)V

    .line 20
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendDTSSoundBy(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendUSBDTSSoundBy(Landroid/content/Context;)V

    .line 22
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendScreenQuality(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendPrivateModeWireLess(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendPrivateModeWire(Landroid/content/Context;)V

    .line 25
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendProjectionDisplayModeWireLess(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendSoundSiwtchWire(Landroid/content/Context;)V

    .line 27
    return-void
.end method
