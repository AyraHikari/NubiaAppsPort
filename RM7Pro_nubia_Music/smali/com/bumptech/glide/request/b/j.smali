.class public abstract Lcom/bumptech/glide/request/b/j;
.super Lcom/bumptech/glide/request/b/a;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/b/a",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/lang/Integer;


# instance fields
.field private final c:Lcom/bumptech/glide/request/b/j$a;

.field protected final f:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/request/b/j;->a:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/request/b/j;->b:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/bumptech/glide/request/b/a;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "View must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/b/j;->f:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/bumptech/glide/request/b/j$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/b/j$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/b/j;->c:Lcom/bumptech/glide/request/b/j$a;

    .line 80
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/bumptech/glide/request/b/j;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/request/b/j;->a:Z

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/request/b/j;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/b/j;->f:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/b/j;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/bumptech/glide/request/b/j;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/bumptech/glide/request/b/j;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/b/j;->f:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/b/j;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/request/b/j;->f:Landroid/view/View;

    return-object v0
.end method

.method public getRequest()Lcom/bumptech/glide/request/b;
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/bumptech/glide/request/b/j;->c()Ljava/lang/Object;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    instance-of v1, v0, Lcom/bumptech/glide/request/b;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lcom/bumptech/glide/request/b;

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getSize(Lcom/bumptech/glide/request/b/g;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/request/b/j;->c:Lcom/bumptech/glide/request/b/j$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/b/j$a;->a(Lcom/bumptech/glide/request/b/g;)V

    .line 101
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/b;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/b/j;->a(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/request/b/j;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
