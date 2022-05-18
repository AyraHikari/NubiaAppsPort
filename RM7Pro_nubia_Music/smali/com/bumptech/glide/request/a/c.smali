.class public Lcom/bumptech/glide/request/a/c;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lcom/bumptech/glide/request/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/request/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/c;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/bumptech/glide/request/a/i;

    new-instance v1, Lcom/bumptech/glide/request/a/c$a;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/request/a/c$a;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/a/i;-><init>(Lcom/bumptech/glide/request/a/h$a;)V

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/a/c;-><init>(Lcom/bumptech/glide/request/a/i;I)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/a/i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/i",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/request/a/c;->a:Lcom/bumptech/glide/request/a/i;

    .line 47
    iput p2, p0, Lcom/bumptech/glide/request/a/c;->b:I

    .line 48
    return-void
.end method

.method private a()Lcom/bumptech/glide/request/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->a:Lcom/bumptech/glide/request/a/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/a/i;->a(ZZ)Lcom/bumptech/glide/request/a/e;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/bumptech/glide/request/a/d;

    iget v2, p0, Lcom/bumptech/glide/request/a/c;->b:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/a/d;-><init>(Lcom/bumptech/glide/request/a/e;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    return-object v0
.end method

.method private b()Lcom/bumptech/glide/request/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->d:Lcom/bumptech/glide/request/a/d;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->a:Lcom/bumptech/glide/request/a/i;

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/a/i;->a(ZZ)Lcom/bumptech/glide/request/a/e;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/bumptech/glide/request/a/d;

    iget v2, p0, Lcom/bumptech/glide/request/a/c;->b:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/a/d;-><init>(Lcom/bumptech/glide/request/a/e;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/a/c;->d:Lcom/bumptech/glide/request/a/d;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->d:Lcom/bumptech/glide/request/a/d;

    return-object v0
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/request/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/a/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/bumptech/glide/request/a/g;->b()Lcom/bumptech/glide/request/a/e;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/c;->a()Lcom/bumptech/glide/request/a/e;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/c;->b()Lcom/bumptech/glide/request/a/e;

    move-result-object v0

    goto :goto_0
.end method
