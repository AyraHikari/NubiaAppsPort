.class public Lcn/nubia/videogenerator/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/c/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/media/MediaFormat;

.field private c:Lcn/nubia/videogenerator/a/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcn/nubia/videogenerator/c/a$a;

.field private g:Z

.field private h:Z

.field private i:Lcn/nubia/videogenerator/a/g;

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:J

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcn/nubia/videogenerator/c/a$1;

    invoke-direct {v0}, Lcn/nubia/videogenerator/c/a$1;-><init>()V

    sput-object v0, Lcn/nubia/videogenerator/c/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->b:Landroid/media/MediaFormat;

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcn/nubia/videogenerator/c/a;->g:Z

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcn/nubia/videogenerator/c/a;->h:Z

    .line 45
    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->i:Lcn/nubia/videogenerator/a/g;

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcn/nubia/videogenerator/c/a;->j:J

    .line 47
    iput-wide v2, p0, Lcn/nubia/videogenerator/c/a;->k:J

    const-wide/16 v4, -0x1

    .line 48
    iput-wide v4, p0, Lcn/nubia/videogenerator/c/a;->l:J

    .line 49
    iput-wide v4, p0, Lcn/nubia/videogenerator/c/a;->m:J

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcn/nubia/videogenerator/c/a;->n:I

    .line 51
    iput v1, p0, Lcn/nubia/videogenerator/c/a;->o:I

    const v0, 0xac44

    .line 52
    iput v0, p0, Lcn/nubia/videogenerator/c/a;->p:I

    .line 53
    iput-wide v2, p0, Lcn/nubia/videogenerator/c/a;->q:J

    .line 54
    iput-wide v2, p0, Lcn/nubia/videogenerator/c/a;->r:J

    .line 55
    iput-wide v2, p0, Lcn/nubia/videogenerator/c/a;->s:J

    .line 59
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->d:Ljava/lang/String;

    .line 60
    iput-wide p2, p0, Lcn/nubia/videogenerator/c/a;->j:J

    .line 61
    new-instance p1, Lcn/nubia/videogenerator/c/a$a;

    invoke-direct {p1, p0}, Lcn/nubia/videogenerator/c/a$a;-><init>(Lcn/nubia/videogenerator/c/a;)V

    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->f:Lcn/nubia/videogenerator/c/a$a;

    .line 62
    invoke-virtual {p0}, Lcn/nubia/videogenerator/c/a;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/videogenerator/c/a;->h:Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/c/a;J)J
    .locals 0

    .line 16
    iput-wide p1, p0, Lcn/nubia/videogenerator/c/a;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/videogenerator/c/a;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->b:Landroid/media/MediaFormat;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/videogenerator/c/a;Lcn/nubia/videogenerator/a/c;)Lcn/nubia/videogenerator/a/c;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->c:Lcn/nubia/videogenerator/a/c;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/videogenerator/c/a;Lcn/nubia/videogenerator/a/g;)Lcn/nubia/videogenerator/a/g;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->i:Lcn/nubia/videogenerator/a/g;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/videogenerator/c/a;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/videogenerator/c/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/videogenerator/c/a;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/videogenerator/c/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/videogenerator/c/a;)I
    .locals 0

    .line 16
    iget p0, p0, Lcn/nubia/videogenerator/c/a;->o:I

    return p0
.end method

.method static synthetic c(Lcn/nubia/videogenerator/c/a;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcn/nubia/videogenerator/c/a;->h:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/g;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/videogenerator/c/a;->i:Lcn/nubia/videogenerator/a/g;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/videogenerator/c/a;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/videogenerator/c/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/videogenerator/c/a;)I
    .locals 0

    .line 16
    iget p0, p0, Lcn/nubia/videogenerator/c/a;->n:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/videogenerator/c/a;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/c/a;->l:J

    return-wide v0
.end method

.method static synthetic h(Lcn/nubia/videogenerator/c/a;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcn/nubia/videogenerator/c/a;->g:Z

    return p0
.end method

.method static synthetic i(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/c;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/videogenerator/c/a;->c:Lcn/nubia/videogenerator/a/c;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/videogenerator/c/a;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/c/a;->q:J

    return-wide v0
.end method

.method static synthetic k(Lcn/nubia/videogenerator/c/a;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/c/a;->j:J

    return-wide v0
.end method

.method static synthetic l(Lcn/nubia/videogenerator/c/a;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/c/a;->k:J

    return-wide v0
.end method

.method static synthetic m(Lcn/nubia/videogenerator/c/a;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/c/a;->s:J

    return-wide v0
.end method

.method static synthetic n(Lcn/nubia/videogenerator/c/a;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/c/a;->r:J

    return-wide v0
.end method

.method static synthetic o(Lcn/nubia/videogenerator/c/a;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/c/a;->m:J

    return-wide v0
.end method


# virtual methods
.method public a()Landroid/media/MediaFormat;
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->b:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public a(Lcn/nubia/videogenerator/a/c;Lcn/nubia/videogenerator/a/g;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->c:Lcn/nubia/videogenerator/a/c;

    .line 67
    iput-object p2, p0, Lcn/nubia/videogenerator/c/a;->i:Lcn/nubia/videogenerator/a/g;

    return-void
.end method

.method public b()V
    .locals 3

    .line 112
    iget-boolean v0, p0, Lcn/nubia/videogenerator/c/a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->i:Lcn/nubia/videogenerator/a/g;

    invoke-interface {v1, v0}, Lcn/nubia/videogenerator/a/g;->a(Landroid/media/MediaFormat;)V

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->f:Lcn/nubia/videogenerator/c/a$a;

    const-string v2, "AudioLocalSource"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcn/nubia/videogenerator/c/a;->g:Z

    return-void
.end method

.method public d()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const-string v1, "mime"

    .line 127
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->e:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToDecoer mimetype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioLocalSource"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v0, Lcn/nubia/videogenerator/c/a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
