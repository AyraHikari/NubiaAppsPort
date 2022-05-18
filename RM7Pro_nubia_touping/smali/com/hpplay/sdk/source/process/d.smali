.class Lcom/hpplay/sdk/source/process/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/process/d$a;
    }
.end annotation


# instance fields
.field private A:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

.field private B:Z

.field private C:Ljava/lang/String;

.field a:Lcom/hpplay/sdk/source/k;

.field b:Lcom/hpplay/sdk/source/d;

.field c:Lcom/hpplay/sdk/source/i;

.field d:Lcom/hpplay/sdk/source/l;

.field e:Lcom/hpplay/sdk/source/b;

.field f:Lcom/hpplay/sdk/source/g;

.field g:Lcom/hpplay/sdk/source/e;

.field h:Lcom/hpplay/sdk/source/h;

.field i:Lcom/hpplay/sdk/source/f;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Landroid/content/Context;

.field private q:Lcom/hpplay/sdk/source/process/d$a;

.field private r:Lcom/hpplay/sdk/source/api/IConnectListener;

.field private s:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

.field private t:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private u:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

.field private v:Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

.field private w:Lcom/hpplay/sdk/source/api/IDebugAVListener;

.field private x:Lcom/hpplay/sdk/source/browse/api/AuthListener;

.field private y:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

.field private z:Lcom/hpplay/sdk/source/api/IBindSdkListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/process/d$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "MySConnection"

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/process/d;->B:Z

    .line 201
    new-instance v0, Lcom/hpplay/sdk/source/process/d$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$1;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->a:Lcom/hpplay/sdk/source/k;

    .line 210
    new-instance v0, Lcom/hpplay/sdk/source/process/d$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$2;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->b:Lcom/hpplay/sdk/source/d;

    .line 229
    new-instance v0, Lcom/hpplay/sdk/source/process/d$3;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$3;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->c:Lcom/hpplay/sdk/source/i;

    .line 239
    new-instance v0, Lcom/hpplay/sdk/source/process/d$4;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$4;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->d:Lcom/hpplay/sdk/source/l;

    .line 272
    new-instance v0, Lcom/hpplay/sdk/source/process/d$5;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$5;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->e:Lcom/hpplay/sdk/source/b;

    .line 282
    new-instance v0, Lcom/hpplay/sdk/source/process/d$6;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$6;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->f:Lcom/hpplay/sdk/source/g;

    .line 305
    new-instance v0, Lcom/hpplay/sdk/source/process/d$7;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$7;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->g:Lcom/hpplay/sdk/source/e;

    .line 321
    new-instance v0, Lcom/hpplay/sdk/source/process/d$8;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$8;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->h:Lcom/hpplay/sdk/source/h;

    .line 398
    new-instance v0, Lcom/hpplay/sdk/source/process/d$9;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/d$9;-><init>(Lcom/hpplay/sdk/source/process/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/d;->i:Lcom/hpplay/sdk/source/f;

    .line 77
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/process/d;->B:Z

    .line 78
    iput-object p2, p0, Lcom/hpplay/sdk/source/process/d;->k:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/hpplay/sdk/source/process/d;->l:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->p:Landroid/content/Context;

    .line 81
    iput-object p4, p0, Lcom/hpplay/sdk/source/process/d;->m:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/hpplay/sdk/source/process/d;->o:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/hpplay/sdk/source/process/d;->n:Ljava/lang/String;

    .line 84
    iput-object p7, p0, Lcom/hpplay/sdk/source/process/d;->q:Lcom/hpplay/sdk/source/process/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    const-string v1, "first bind service !"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->u:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/d;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/process/d;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IConnectListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->r:Lcom/hpplay/sdk/source/api/IConnectListener;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->v:Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    return-object v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/process/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/process/d;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/d;->B:Z

    return v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/AuthListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->x:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    return-object v0
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IBindSdkListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->z:Lcom/hpplay/sdk/source/api/IBindSdkListener;

    return-object v0
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->s:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    return-object v0
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->A:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    return-object v0
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IDebugAVListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->w:Lcom/hpplay/sdk/source/api/IDebugAVListener;

    return-object v0
.end method

.method static synthetic k(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->t:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    return-object v0
.end method

.method static synthetic l(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/InteractiveAdListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->y:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/d;->b()V

    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->p:Landroid/content/Context;

    const-class v2, Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->p:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 101
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    const-string v1, "start bind"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/api/IBindSdkListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->z:Lcom/hpplay/sdk/source/api/IBindSdkListener;

    .line 93
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IConnectListener;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->r:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 172
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IDebugAVListener;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->w:Lcom/hpplay/sdk/source/api/IDebugAVListener;

    .line 156
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->A:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    .line 152
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->t:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 176
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->y:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    .line 190
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/AuthListener;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->x:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    .line 186
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->v:Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    .line 181
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->s:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    .line 164
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->u:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    .line 168
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d;->C:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->p:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->p:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 111
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->p:Landroid/content/Context;

    const-string v1, "pro_pid"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    const-string v1, "pro_pid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbind  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 116
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    const-string v1, "connected"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Lcom/hpplay/sdk/source/n$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/n;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->q:Lcom/hpplay/sdk/source/process/d$a;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->q:Lcom/hpplay/sdk/source/process/d$a;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/process/d$a;->onServiceConnected(Lcom/hpplay/sdk/source/n;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/d;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/d;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/process/d;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/hpplay/sdk/source/process/d;->n:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/hpplay/sdk/source/n;->initSdkWithUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->e:Lcom/hpplay/sdk/source/b;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setLelinkServiceInfoListener(Lcom/hpplay/sdk/source/b;)V

    .line 135
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->b:Lcom/hpplay/sdk/source/d;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setConnectStatusListener(Lcom/hpplay/sdk/source/d;)V

    .line 136
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->h:Lcom/hpplay/sdk/source/h;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setLelinkPlayListenerListener(Lcom/hpplay/sdk/source/h;)V

    .line 137
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->a:Lcom/hpplay/sdk/source/k;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setParceResultListener(Lcom/hpplay/sdk/source/k;)V

    .line 138
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->d:Lcom/hpplay/sdk/source/l;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setAuthListener(Lcom/hpplay/sdk/source/l;)V

    .line 139
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->g:Lcom/hpplay/sdk/source/e;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setDebugAVListener(Lcom/hpplay/sdk/source/e;)V

    .line 140
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->f:Lcom/hpplay/sdk/source/g;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setDisplayListener(Lcom/hpplay/sdk/source/g;)V

    .line 141
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->C:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setDebugVideoFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/process/d;->B:Z

    .line 195
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->q:Lcom/hpplay/sdk/source/process/d$a;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->q:Lcom/hpplay/sdk/source/process/d$a;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/process/d$a;->onServiceDisconnected()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d;->j:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method
