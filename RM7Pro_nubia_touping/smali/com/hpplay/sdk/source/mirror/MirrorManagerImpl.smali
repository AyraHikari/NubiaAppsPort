.class public Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MirrorManagerImpl"

.field private static final b:I = 0x700000


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private e:Lcom/hpplay/sdk/source/browse/b/b;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;

.field private k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

.field private l:Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/high16 v0, 0x700000

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->f:I

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->g:I

    .line 31
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    .line 32
    const/16 v0, 0x500

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    .line 39
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 175
    const-string v0, "MirrorManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMirror context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->e:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 177
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->j:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->j:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 179
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->e:Lcom/hpplay/sdk/source/browse/b/b;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->l:Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/bean/MirrorInfoBean;)V

    .line 183
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Landroid/content/Intent;)V

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 185
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->e()V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    const-class v2, Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v1, "mirrorSwtich"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v1, "key_browserinfo"

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->e:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    const-string v1, "key_mirrorinfo"

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->l:Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    new-instance v1, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-direct {v1, p0, v2, p1}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;-><init>(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->j:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;

    .line 197
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->j:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->e:Lcom/hpplay/sdk/source/browse/b/b;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/bean/MirrorInfoBean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->l:Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->c()V

    .line 269
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->d()V

    .line 275
    :cond_0
    return-void
.end method

.method public enforceEncodeParams(IIII)V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(IIII)V

    .line 108
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 281
    return-void
.end method

.method public resizeScreen(Z)V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Z)V

    .line 262
    :cond_0
    return-void
.end method

.method public setAutoBitrate(Z)V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->f:I

    .line 101
    return-void
.end method

.method public setBitrateLevel(I)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 90
    const/high16 v0, 0x700000

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->f:I

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_2

    .line 92
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->f:I

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 94
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->f:I

    goto :goto_0
.end method

.method public setFrame(I)V
    .locals 0

    .prologue
    .line 112
    if-lez p1, :cond_0

    .line 113
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->g:I

    .line 115
    :cond_0
    return-void
.end method

.method public setKeyFrameInterval(I)V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public setOption(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 45
    return-void
.end method

.method public setResolution(II)V
    .locals 2

    .prologue
    .line 76
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 77
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    .line 78
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    if-gez v0, :cond_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/ScreenUtil;->getRelScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    .line 82
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    goto :goto_0
.end method

.method public setResolutionLevel(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/ScreenUtil;->getRelScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 51
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    .line 52
    aget v0, v0, v3

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    .line 53
    if-ne v3, p1, :cond_2

    .line 54
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    if-nez v0, :cond_1

    .line 55
    :cond_0
    const/16 v0, 0x438

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    .line 56
    const/16 v0, 0x780

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_5

    .line 59
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    if-nez v0, :cond_4

    .line 60
    :cond_3
    const/16 v0, 0x21c

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    .line 61
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    goto :goto_0

    .line 63
    :cond_4
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    .line 64
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    goto :goto_0

    .line 66
    :cond_5
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 67
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    if-nez v0, :cond_1

    .line 68
    :cond_6
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    .line 69
    const/16 v0, 0x500

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    goto :goto_0
.end method

.method public startMirror(Landroid/content/Intent;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/bean/MirrorInfoBean;)V
    .locals 10

    .prologue
    const v9, 0x33849

    const v8, 0x33838

    .line 138
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->e:Lcom/hpplay/sdk/source/browse/b/b;

    .line 139
    const-string v1, "MirrorManagerImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMirror "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->h:I

    invoke-virtual {p3, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setWidth(I)V

    .line 141
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->i:I

    invoke-virtual {p3, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setHeight(I)V

    .line 142
    invoke-virtual {p3}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isAutoBitRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/high16 v0, 0x700000

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->f:I

    .line 145
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->f:I

    invoke-virtual {p3, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setBitRate(I)V

    .line 146
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->g:I

    invoke-virtual {p3, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setFrame(I)V

    .line 147
    iput-object p3, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->l:Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

    .line 148
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->e:Lcom/hpplay/sdk/source/browse/b/b;

    if-nez v0, :cond_3

    .line 150
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    invoke-virtual {p3}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getConnectSessionId()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p3}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getmUri()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x33839

    .line 152
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 150
    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onMirrorSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, v8, v9}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    .line 170
    :cond_1
    :goto_1
    return-void

    .line 139
    :cond_2
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 160
    if-nez p1, :cond_5

    .line 161
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->d:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, v8, v9}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    .line 165
    :cond_4
    const-string v0, "MirrorManagerImpl"

    const-string v1, "startMirror must not null or finishing"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_5
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public stopMirror()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 241
    :try_start_0
    const-string v0, "MirrorManagerImpl"

    const-string v1, "----------------------> stop mirror"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->k:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->f()V

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->m:Z

    .line 246
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->j:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->j:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;

    .line 248
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    const-class v2, Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string v1, "MirrorManagerImpl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
