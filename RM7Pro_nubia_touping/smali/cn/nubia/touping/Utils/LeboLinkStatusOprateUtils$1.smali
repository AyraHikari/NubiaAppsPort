.class final Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils$1;
.super Ljava/lang/Object;
.source "LeboLinkStatusOprateUtils.java"

# interfaces
.implements Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->getAudioCapture()Lcn/nubia/touping/AudioTackUtils/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureListener([BI)V
    .locals 1
    .param p1, "audioSource"    # [B
    .param p2, "audioReadSize"    # I

    .prologue
    .line 35
    invoke-static {}, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;->getInstance()Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;->playAudio([BI)V

    .line 36
    return-void
.end method
