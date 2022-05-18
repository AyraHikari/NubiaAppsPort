.class public Lcn/nubia/video/commonui/app/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/a;->g:Z

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/a;->h:Z

    .line 4
    iput-object p1, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    .line 6
    iput-boolean p3, p0, Lcn/nubia/video/commonui/app/a;->g:Z

    .line 7
    invoke-static {p2}, Lcn/nubia/video/commonui/app/c;->d(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/commonui/app/a;->f:I

    .line 8
    invoke-static {p2}, Lcn/nubia/video/commonui/app/c;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/commonui/app/a;->e:I

    .line 9
    iget-object p1, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcn/nubia/video/commonui/app/a$a;

    invoke-direct {p2, p0}, Lcn/nubia/video/commonui/app/a$a;-><init>(Lcn/nubia/video/commonui/app/a;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/commonui/app/a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/a;->d()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/video/commonui/app/a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/a;->e()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/nubia/video/commonui/app/a;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/commonui/app/a;->f(II)V

    return-void
.end method

.method private d()I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private e()I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/video/commonui/app/c;->h(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/c;->e(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 5
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private f(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/c;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/a;->h:Z

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget v0, p0, Lcn/nubia/video/commonui/app/a;->c:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcn/nubia/video/commonui/app/a;->d:I

    if-eq v0, p2, :cond_3

    :cond_2
    mul-int v0, p1, p2

    iget v2, p0, Lcn/nubia/video/commonui/app/a;->f:I

    iget v3, p0, Lcn/nubia/video/commonui/app/a;->e:I

    mul-int/2addr v2, v3

    if-ge v0, v2, :cond_4

    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/a;->g:Z

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/a;->h:Z

    if-eqz v0, :cond_7

    .line 3
    :cond_4
    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/c;->h(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/video/commonui/app/c;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 5
    :cond_5
    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/c;->i(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/video/commonui/app/c;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 7
    :cond_6
    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/video/commonui/app/a;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/video/commonui/app/c;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 9
    iput p1, p0, Lcn/nubia/video/commonui/app/a;->c:I

    .line 10
    iput p2, p0, Lcn/nubia/video/commonui/app/a;->d:I

    .line 11
    :cond_7
    iput-boolean v1, p0, Lcn/nubia/video/commonui/app/a;->h:Z

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/a;->h:Z

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/commonui/app/a;->d:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/a;->h:Z

    return-void
.end method
