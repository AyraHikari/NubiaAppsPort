.class Landroid/support/v8/renderscript/k;
.super Landroid/support/v8/renderscript/Type;
.source "TypeThunker.java"


# static fields
.field static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/renderscript/Type;",
            "Landroid/support/v8/renderscript/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field i:Landroid/renderscript/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/k;->j:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v8/renderscript/Type;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 44
    iput-object p2, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    .line 45
    invoke-virtual {p0}, Landroid/support/v8/renderscript/k;->l()V

    .line 46
    new-instance v0, Landroid/support/v8/renderscript/c;

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v8/renderscript/c;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iput-object v0, p0, Landroid/support/v8/renderscript/k;->h:Landroid/support/v8/renderscript/Element;

    .line 48
    sget-object v1, Landroid/support/v8/renderscript/k;->j:Ljava/util/HashMap;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Landroid/support/v8/renderscript/k;->j:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Landroid/renderscript/Type;)Landroid/support/v8/renderscript/Type;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/support/v8/renderscript/k;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Type;

    return-object v0
.end method

.method static a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;IIIZZI)Landroid/support/v8/renderscript/Type;
    .locals 3

    .prologue
    .line 59
    check-cast p1, Landroid/support/v8/renderscript/c;

    move-object v0, p0

    .line 60
    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 61
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    iget-object v2, p1, Landroid/support/v8/renderscript/c;->f:Landroid/renderscript/Element;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 63
    if-lez p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 64
    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 65
    :cond_1
    if-lez p4, :cond_2

    invoke-virtual {v1, p4}, Landroid/renderscript/Type$Builder;->setZ(I)Landroid/renderscript/Type$Builder;

    .line 66
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {v1, p5}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 67
    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {v1, p6}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 68
    :cond_4
    if-lez p7, :cond_5

    invoke-virtual {v1, p7}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 69
    :cond_5
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/support/v8/renderscript/k;

    invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/k;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 71
    invoke-virtual {v1}, Landroid/support/v8/renderscript/k;->l()V

    .line 73
    return-object v1
.end method


# virtual methods
.method synthetic d()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v8/renderscript/k;->k()Landroid/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method k()Landroid/renderscript/Type;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    return-object v0
.end method

.method l()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/k;->a:I

    .line 34
    iget-object v0, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/k;->b:I

    .line 35
    iget-object v0, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/k;->c:I

    .line 36
    iget-object v0, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/k;->e:Z

    .line 37
    iget-object v0, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/k;->d:Z

    .line 38
    iget-object v0, p0, Landroid/support/v8/renderscript/k;->i:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/k;->f:I

    .line 39
    invoke-virtual {p0}, Landroid/support/v8/renderscript/k;->j()V

    .line 40
    return-void
.end method
