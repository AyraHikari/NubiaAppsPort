.class public Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NotePadPhoneStateListener.java"


# instance fields
.field private mListener:Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;->mListener:Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;

    .line 12
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 24
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 25
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;->mListener:Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;

    invoke-interface {v0}, Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;->pausePlayingOrRecording()V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
