.class public Lcn/nubia/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/d;


# instance fields
.field private a:Lcn/nubia/a/b;

.field private b:Z

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/widget/FrameLayout;

.field private g:I

.field private h:Lcn/nubia/a/e;

.field private i:Lcn/nubia/a/g;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Lcn/nubia/a/c;",
            ">;II)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcn/nubia/a/a;->b:Z

    .line 35
    iput-object v0, p0, Lcn/nubia/a/a;->c:Landroid/app/Activity;

    const/4 v2, -0x1

    .line 37
    iput v2, p0, Lcn/nubia/a/a;->e:I

    .line 39
    iput-object v0, p0, Lcn/nubia/a/a;->f:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    .line 40
    iput v0, p0, Lcn/nubia/a/a;->g:I

    .line 221
    iput v1, p0, Lcn/nubia/a/a;->j:I

    .line 46
    iput-object p1, p0, Lcn/nubia/a/a;->c:Landroid/app/Activity;

    .line 47
    iput p2, p0, Lcn/nubia/a/a;->e:I

    .line 48
    iput-object p3, p0, Lcn/nubia/a/a;->d:Ljava/util/List;

    .line 49
    invoke-direct {p0, p4, p5}, Lcn/nubia/a/a;->a(II)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/a/a;)Lcn/nubia/a/g;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/a/a;->i:Lcn/nubia/a/g;

    return-object p0
.end method

.method private a(II)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/nubia/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "CameraFamily"

    const-string p2, "initCameraFamilyFragment, no member item found"

    .line 66
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/a;->d:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcn/nubia/a/b;->a(Ljava/util/List;II)Lcn/nubia/a/b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    .line 70
    iget p2, p0, Lcn/nubia/a/a;->j:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcn/nubia/a/b;->a(IZ)V

    .line 71
    iget-object p1, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    new-instance p2, Lcn/nubia/a/a$1;

    invoke-direct {p2, p0}, Lcn/nubia/a/a$1;-><init>(Lcn/nubia/a/a;)V

    invoke-virtual {p1, p2}, Lcn/nubia/a/b;->a(Lcn/nubia/a/g;)V

    .line 116
    iget-object p1, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    new-instance p2, Lcn/nubia/a/a$2;

    invoke-direct {p2, p0}, Lcn/nubia/a/a$2;-><init>(Lcn/nubia/a/a;)V

    invoke-virtual {p1, p2}, Lcn/nubia/a/b;->a(Lcn/nubia/a/e;)V

    .line 136
    iget-object p1, p0, Lcn/nubia/a/a;->c:Landroid/app/Activity;

    iget p2, p0, Lcn/nubia/a/a;->e:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/nubia/a/a;->f:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    .line 137
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    invoke-direct {p0}, Lcn/nubia/a/a;->d()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/a/a;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcn/nubia/a/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/a/a;->f:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/a/a;)Lcn/nubia/a/b;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/a/a;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/a/a;->g:I

    return p0
.end method

.method private d()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcn/nubia/a/b;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    invoke-virtual {v1}, Lcn/nubia/a/b;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/a/a;->b:Z

    if-nez v1, :cond_1

    .line 153
    iget v1, p0, Lcn/nubia/a/a;->e:I

    iget-object v2, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v1, 0x1

    .line 154
    iput-boolean v1, p0, Lcn/nubia/a/a;->b:Z

    .line 156
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_2
    :goto_0
    const-string v0, "CameraFamily"

    const-string v1, "showCameraFamily mCameraFamilyFragment is Added()"

    .line 148
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcn/nubia/a/a;)Lcn/nubia/a/e;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/a/a;->h:Lcn/nubia/a/e;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Lcn/nubia/a/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1, p2}, Lcn/nubia/a/b;->a(IZ)V

    .line 227
    :cond_0
    iput p1, p0, Lcn/nubia/a/a;->j:I

    return-void
.end method

.method public a(Lcn/nubia/a/e;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/a/a;->h:Lcn/nubia/a/e;

    return-void
.end method

.method public a(Lcn/nubia/a/g;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/a/a;->i:Lcn/nubia/a/g;

    .line 59
    iget-object p1, p0, Lcn/nubia/a/a;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/a/a;->i:Lcn/nubia/a/g;

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Lcn/nubia/a/g;->a()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "showPage"

    .line 185
    invoke-direct {p0, v0}, Lcn/nubia/a/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcn/nubia/a/a;->g:I

    .line 189
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_1

    const-string v0, "inner call showPage"

    .line 190
    invoke-direct {p0, v0}, Lcn/nubia/a/a;->a(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    invoke-virtual {v0, p1}, Lcn/nubia/a/b;->b(Z)V

    :cond_1
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    const-string v0, "hidePage"

    .line 196
    invoke-direct {p0, v0}, Lcn/nubia/a/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 198
    iput v0, p0, Lcn/nubia/a/a;->g:I

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 201
    invoke-virtual {v0, p1, p2}, Lcn/nubia/a/b;->a(ZZ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 203
    invoke-virtual {v0, p1, p2}, Lcn/nubia/a/b;->a(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/a/a;->a(Ljava/lang/String;)V

    .line 209
    iput p1, p0, Lcn/nubia/a/a;->g:I

    .line 210
    iget-object p1, p0, Lcn/nubia/a/a;->f:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/a/a;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 211
    iget-object p1, p0, Lcn/nubia/a/a;->f:Landroid/widget/FrameLayout;

    iget v0, p0, Lcn/nubia/a/a;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcn/nubia/a/b;->c()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcn/nubia/a/a;->a:Lcn/nubia/a/b;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Lcn/nubia/a/b;->b(I)V

    :cond_0
    return-void
.end method
