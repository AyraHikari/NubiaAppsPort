.class Landroidx/appcompat/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/CompoundButton;

.field private b:Landroid/content/res/ColorStateList;

.field private c:Landroid/graphics/PorterDuff$Mode;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroid/content/res/ColorStateList;

    .line 40
    iput-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroidx/appcompat/widget/j;->d:Z

    .line 42
    iput-boolean v0, p0, Landroidx/appcompat/widget/j;->e:Z

    .line 47
    iput-object p1, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 2

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method a()Landroid/content/res/ColorStateList;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 95
    iput-object p1, p0, Landroidx/appcompat/widget/j;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Landroidx/appcompat/widget/j;->d:Z

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/widget/j;->d()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 106
    iput-object p1, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Landroidx/appcompat/widget/j;->e:Z

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/widget/j;->d()V

    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 10

    .line 51
    iget-object v0, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    .line 52
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/a$j;->aR:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ax;

    move-result-object v0

    .line 54
    iget-object v3, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/a$j;->aR:[I

    .line 55
    invoke-virtual {v0}, Landroidx/appcompat/widget/ax;->a()Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v9, 0x0

    move-object v6, p1

    move v8, p2

    .line 54
    invoke-static/range {v3 .. v9}, Landroidx/core/f/u;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 58
    :try_start_0
    sget p1, Landroidx/appcompat/a$j;->aT:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    sget p1, Landroidx/appcompat/a$j;->aT:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 62
    :try_start_1
    iget-object p2, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    .line 63
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_1

    .line 71
    :try_start_2
    sget p1, Landroidx/appcompat/a$j;->aS:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    sget p1, Landroidx/appcompat/a$j;->aS:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p2, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    .line 76
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_1
    sget p1, Landroidx/appcompat/a$j;->aU:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    sget p2, Landroidx/appcompat/a$j;->aU:I

    .line 81
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 80
    invoke-static {p1, p2}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 83
    :cond_2
    sget p1, Landroidx/appcompat/a$j;->aV:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    sget p2, Landroidx/appcompat/a$j;->aV:I

    const/4 v1, -0x1

    .line 86
    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result p2

    const/4 v1, 0x0

    .line 85
    invoke-static {p2, v1}, Landroidx/appcompat/widget/af;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 84
    invoke-static {p1, p2}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ax;->b()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ax;->b()V

    .line 91
    throw p1
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method c()V
    .locals 1

    .line 117
    iget-boolean v0, p0, Landroidx/appcompat/widget/j;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Landroidx/appcompat/widget/j;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Landroidx/appcompat/widget/j;->f:Z

    .line 123
    invoke-virtual {p0}, Landroidx/appcompat/widget/j;->d()V

    return-void
.end method

.method d()V
    .locals 2

    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 129
    iget-boolean v1, p0, Landroidx/appcompat/widget/j;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/j;->e:Z

    if-eqz v1, :cond_4

    .line 130
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    iget-boolean v1, p0, Landroidx/appcompat/widget/j;->d:Z

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Landroidx/appcompat/widget/j;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/j;->e:Z

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 140
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 143
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method
