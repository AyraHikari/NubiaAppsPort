.class public Lcn/nubia/camera/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/g/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcn/nubia/camera/g/a$a;

.field private d:Lcn/nubia/camera/d/a;

.field private e:Lcn/nubia/camera/af/a;

.field private f:Lcn/nubia/camera/ap/b;

.field private g:Lcn/nubia/camera/ad/a;

.field private h:Lcn/nubia/camera/f/a;

.field private i:Lcn/nubia/camera/ap/a;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcn/nubia/camera/g/a$a;Lcn/nubia/camera/ad/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;",
            "Lcn/nubia/camera/g/a$a;",
            "Lcn/nubia/camera/ad/a;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/nubia/camera/g/a;->b:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcn/nubia/camera/g/a;->c:Lcn/nubia/camera/g/a$a;

    .line 32
    iput-object v0, p0, Lcn/nubia/camera/g/a;->e:Lcn/nubia/camera/af/a;

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/g/a;->f:Lcn/nubia/camera/ap/b;

    .line 75
    new-instance v0, Lcn/nubia/camera/g/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/g/a$1;-><init>(Lcn/nubia/camera/g/a;)V

    iput-object v0, p0, Lcn/nubia/camera/g/a;->h:Lcn/nubia/camera/f/a;

    .line 110
    new-instance v0, Lcn/nubia/camera/g/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/g/a$2;-><init>(Lcn/nubia/camera/g/a;)V

    iput-object v0, p0, Lcn/nubia/camera/g/a;->i:Lcn/nubia/camera/ap/a;

    .line 41
    iput-object p3, p0, Lcn/nubia/camera/g/a;->g:Lcn/nubia/camera/ad/a;

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/g/a;->a:Ljava/util/ArrayList;

    .line 43
    iput-object p2, p0, Lcn/nubia/camera/g/a;->c:Lcn/nubia/camera/g/a$a;

    .line 44
    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/g/a;->e:Lcn/nubia/camera/af/a;

    .line 45
    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/g/a;->d:Lcn/nubia/camera/d/a;

    .line 46
    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->K()Lcn/nubia/camera/ap/b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/g/a;->f:Lcn/nubia/camera/ap/b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/g/a;)Lcn/nubia/camera/d/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/camera/g/a;->d:Lcn/nubia/camera/d/a;

    return-object p0
.end method

.method private b(Lcn/nubia/camera/af/b;)I
    .locals 3

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/g/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 67
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 68
    iget-object v2, p0, Lcn/nubia/camera/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/g/a;)Lcn/nubia/camera/af/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/camera/g/a;->e:Lcn/nubia/camera/af/a;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 97
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/g/a;->g:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/g/a;->b:I

    goto :goto_1

    .line 101
    :cond_1
    iget v0, p0, Lcn/nubia/camera/g/a;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/g/a;->b:I

    .line 103
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/g/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/camera/g/a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/af/b;

    .line 105
    iget-object v1, p0, Lcn/nubia/camera/g/a;->c:Lcn/nubia/camera/g/a$a;

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v1, v0}, Lcn/nubia/camera/g/a$a;->a(Lcn/nubia/camera/af/b;)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/g/a;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/camera/g/a;->c()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/g/a;)Lcn/nubia/camera/ap/b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/camera/g/a;->f:Lcn/nubia/camera/ap/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/g/a;->f:Lcn/nubia/camera/ap/b;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcn/nubia/camera/g/a;->i:Lcn/nubia/camera/ap/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b;->a(Lcn/nubia/camera/ap/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/af/b;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/camera/g/a;->b(Lcn/nubia/camera/af/b;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/g/a;->b:I

    return-void
.end method

.method public b()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/g/a;->f:Lcn/nubia/camera/ap/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b;->a(Z)V

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/g/a;->f:Lcn/nubia/camera/ap/b;

    iget-object v1, p0, Lcn/nubia/camera/g/a;->i:Lcn/nubia/camera/ap/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b;->b(Lcn/nubia/camera/ap/a;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcn/nubia/camera/g/a;->d:Lcn/nubia/camera/d/a;

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/g/a;->h:Lcn/nubia/camera/f/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    return-void
.end method
