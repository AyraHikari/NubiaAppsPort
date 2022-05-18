.class public Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;
.super Ljava/lang/Object;
.source "LeBoILelinkPlayerListener.java"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;
    }
.end annotation


# static fields
.field private static final MIRROR_INFO_BANDWIDTH_CHANGED:I = 0x3385d

.field public static final MIRROR_INFO_BANDWIDTH_HIGH:I = 0x3385e

.field public static final MIRROR_INFO_BANDWIDTH_LOW:I = 0x33860

.field public static final MIRROR_INFO_BANDWIDTH_MID:I = 0x3385f

.field public static final MIRROR_INFO_BANDWIDTH_POOR:I = 0x33861

.field public static final OnCompletion:I = 0x18

.field public static final OnError:I = 0x1c

.field public static final OnInfo:I = 0x1b

.field public static final OnLoading:I = 0x15

.field public static final OnPause:I = 0x17

.field public static final OnPositionUpdate:I = 0x1e

.field public static final OnStart:I = 0x16

.field public static final OnStop:I = 0x19

.field public static final OnVolumeChanged:I = 0x1d

.field public static mCurrentMirror_info:I = 0x0

.field private static mMirrorInfoBandWidth:Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth; = null

.field public static final onSeekComplete:I = 0x1a


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x3385e

    sput v0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mCurrentMirror_info:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "LeBoILelinkPlayerListener"

    iput-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mUiHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private sendMessage(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static setmMirrorInfoBandWidth(Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;)V
    .locals 0
    .param p0, "mMirrorInfoBandWidthTemp"    # Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;

    .prologue
    .line 129
    sput-object p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mMirrorInfoBandWidth:Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;

    .line 130
    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .prologue
    .line 67
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 68
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    const-string v1, "status: ==    onCompletion"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onError(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status: ==    onErrori = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    i1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 107
    return-void
.end method

.method public onInfo(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 86
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 87
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status: ==    onInfo  i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const v0, 0x3385d

    if-ne p1, v0, :cond_0

    .line 89
    sput p2, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mCurrentMirror_info:I

    .line 90
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirrorInfoBandWidth : =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mMirrorInfoBandWidth:Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mMirrorInfoBandWidth:Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->mMirrorInfoBandWidth:Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;

    invoke-interface {v0, p2}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;->mirrorInfoChanged(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public onInfo(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # Ljava/lang/String;

    .prologue
    .line 99
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 100
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status: ==    onInfo  i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " String i1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onLoading()V
    .locals 2

    .prologue
    .line 49
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 50
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    const-string v1, "status: ==    onLoading"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 61
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    const-string v1, "status: ==    onPause"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onPositionUpdate(JJ)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "l1"    # J

    .prologue
    .line 117
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 118
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    const-string v1, "status: ==   onPositionUpdate"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onSeekComplete(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 80
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 81
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    const-string v1, "status: ==    onSeekComplete"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    const-string v1, "status: ==    onStart"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 57
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    const-string v1, "status: ==    onStop"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 76
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 111
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->sendMessage(I)V

    .line 112
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->TAG:Ljava/lang/String;

    const-string v1, "status: ==    onVolumeChanged"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
