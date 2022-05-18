.class Lcn/nubia/deskclock/AsyncRingtonePlayer$2;
.super Ljava/lang/Object;
.source "AsyncRingtonePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AsyncRingtonePlayer;->play(Lcn/nubia/deskclock/model/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 252
    iput-object p1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$2;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 255
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$2;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$1100(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$2;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v2}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$1000(Lcn/nubia/deskclock/AsyncRingtonePlayer;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 256
    return-void
.end method
