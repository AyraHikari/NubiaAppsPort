.class Lcn/nubia/camera/al/c$b;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/al/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/al/c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/al/c;Landroid/content/Context;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    .line 109
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p1, p2

    .line 148
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    .line 149
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x2d

    .line 153
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    return p1

    :cond_2
    return p2
.end method

.method private a(Landroid/app/Activity;)I
    .locals 1

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x10e

    return p1

    :cond_1
    const/16 p1, 0xb4

    return p1

    :cond_2
    const/16 p1, 0x5a

    return p1
.end method

.method private a()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    invoke-static {v0}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    .line 135
    invoke-static {v0}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    invoke-static {v1}, Lcn/nubia/camera/al/c;->c(Lcn/nubia/camera/al/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/al/c$b;->a(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    invoke-static {v1}, Lcn/nubia/camera/al/c;->d(Lcn/nubia/camera/al/c;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 138
    iget-object v1, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    invoke-static {v1, v0}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c;I)I

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    invoke-static {v0}, Lcn/nubia/camera/al/c;->d(Lcn/nubia/camera/al/c;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/al/c;->c(Lcn/nubia/camera/al/c;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    invoke-static {v0}, Lcn/nubia/camera/al/c;->a(Lcn/nubia/camera/al/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OrientationManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/al/c$b;->a:Lcn/nubia/camera/al/c;

    invoke-static {v0}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/al/c$b;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/camera/al/c;->a(Lcn/nubia/camera/al/c;I)I

    .line 123
    invoke-direct {p0}, Lcn/nubia/camera/al/c$b;->a()V

    return-void
.end method
