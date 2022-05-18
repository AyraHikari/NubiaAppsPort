.class public Lcn/nubia/music/app/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/MediaButtonIntentReceiver$a;
    }
.end annotation


# static fields
.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static final MSG_LONGPRESS_TIMEOUT:I = 0x1

.field private static final MSG_MEDIA_CMD:I = 0x2

.field private static mDown:Z

.field private static mFirstClickTime:J

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field private static mLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 41
    sput-wide v2, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 42
    sput-wide v2, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mFirstClickTime:J

    .line 43
    sput-boolean v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mDown:Z

    .line 44
    sput-boolean v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLaunched:Z

    .line 51
    new-instance v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/music/app/MediaButtonIntentReceiver$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 35
    sput-boolean p0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method

.method static synthetic access$102(J)J
    .locals 0

    .prologue
    .line 35
    sput-wide p0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mFirstClickTime:J

    return-wide p0
.end method

.method static synthetic access$202(J)J
    .locals 0

    .prologue
    .line 35
    sput-wide p0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    return-wide p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 84
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 90
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v1, "cn.nubia.music.preset.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "action_headset_unplugged"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    invoke-static {p1, v0}, Lcn/nubia/music/utils/AdaptationUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 98
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 103
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 104
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 106
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 114
    :cond_2
    const/4 v1, 0x0

    .line 115
    sparse-switch v4, :sswitch_data_0

    .line 137
    :goto_1
    if-eqz v1, :cond_0

    .line 138
    if-nez v5, :cond_8

    .line 139
    sget-boolean v4, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v4, :cond_4

    .line 140
    const-string v0, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-wide v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    sget-wide v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 143
    sget-object v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/music/app/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcn/nubia/music/app/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 117
    :sswitch_0
    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    goto :goto_1

    .line 121
    :sswitch_1
    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    goto :goto_1

    .line 124
    :sswitch_2
    const-string v1, "cn.nubia.music.preset.musicservicecommand.next"

    goto :goto_1

    .line 127
    :sswitch_3
    const-string v1, "cn.nubia.music.preset.musicservicecommand.previous"

    goto :goto_1

    .line 130
    :sswitch_4
    const-string v1, "cn.nubia.music.preset.musicservicecommand.pause"

    goto :goto_1

    .line 133
    :sswitch_5
    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v4, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-wide v4, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mFirstClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    sget-wide v4, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 157
    sget-object v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    new-instance v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;-><init>(Lcn/nubia/music/app/MediaButtonIntentReceiver;Lcn/nubia/music/app/MediaButtonIntentReceiver$1;)V

    .line 159
    iput-object p1, v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;->a:Landroid/content/Context;

    .line 160
    const-string v1, "cn.nubia.music.preset.musicservicecommand.next"

    iput-object v1, v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;->b:Ljava/lang/String;

    .line 161
    sget-object v1, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 162
    sget-object v1, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    sput-wide v2, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 192
    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLaunched:Z

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 165
    :cond_5
    const-string v4, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-wide v4, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mFirstClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2ee

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    sget-wide v4, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 167
    sget-object v1, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    const-string v1, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-static {p1, v0}, Lcn/nubia/music/utils/AdaptationUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 170
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mFirstClickTime:J

    .line 171
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 174
    :cond_6
    const-string v4, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    sput-wide v2, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mFirstClickTime:J

    .line 176
    sget-object v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    new-instance v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;-><init>(Lcn/nubia/music/app/MediaButtonIntentReceiver;Lcn/nubia/music/app/MediaButtonIntentReceiver$1;)V

    .line 178
    iput-object p1, v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;->a:Landroid/content/Context;

    .line 179
    iput-object v1, v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;->b:Ljava/lang/String;

    .line 180
    sget-object v1, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 181
    sget-object v1, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 185
    :cond_7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-static {p1, v0}, Lcn/nubia/music/utils/AdaptationUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 187
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mFirstClickTime:J

    .line 188
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 196
    :cond_8
    sget-object v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;->mDown:Z

    goto/16 :goto_2

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x7e -> :sswitch_5
        0x7f -> :sswitch_4
    .end sparse-switch
.end method
