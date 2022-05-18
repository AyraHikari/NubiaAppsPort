.class public Lcom/zte/camera/ui/b/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/b/c/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "c"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zte/camera/ui/b/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/camera/ui/b/c/c$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/zte/camera/ui/b/c/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/b/c/c;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/zte/camera/ui/b/c/c;->f:I

    return p1
.end method

.method static synthetic a(Lcom/zte/camera/ui/b/c/c;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/camera/ui/b/c/c;->c:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic a(Lcom/zte/camera/ui/b/c/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/camera/ui/b/c/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/zte/camera/ui/b/c/c;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/zte/camera/ui/b/c/c;->g:I

    return p1
.end method

.method static synthetic c(Lcom/zte/camera/ui/b/c/c;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/zte/camera/ui/b/c/c;->d:I

    return p1
.end method

.method static synthetic d(Lcom/zte/camera/ui/b/c/c;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/zte/camera/ui/b/c/c;->e:I

    return p1
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/camera/ui/b/c/a/b;

    invoke-interface {p1}, Lcom/zte/camera/ui/b/c/a/b;->c()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/zte/camera/ui/b/c/a/b;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/zte/camera/ui/b/c/c;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemplateNode [name="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/zte/camera/ui/b/c/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",totalDuration="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Lcom/zte/camera/ui/b/c/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",segCount="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lcom/zte/camera/ui/b/c/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
