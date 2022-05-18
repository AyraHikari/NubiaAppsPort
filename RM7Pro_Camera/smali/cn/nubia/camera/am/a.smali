.class public Lcn/nubia/camera/am/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/am/a$a;
    }
.end annotation


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcn/nubia/camera/am/a;->a:I

    .line 27
    invoke-virtual {p0, p1}, Lcn/nubia/camera/am/a;->setCancelable(Z)V

    .line 28
    invoke-virtual {p0, p1}, Lcn/nubia/camera/am/a;->setCanceledOnTouchOutside(Z)V

    .line 29
    invoke-virtual {p0}, Lcn/nubia/camera/am/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f100005

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 30
    invoke-virtual {p0}, Lcn/nubia/camera/am/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 31
    invoke-virtual {p0}, Lcn/nubia/camera/am/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    iput p2, p0, Lcn/nubia/camera/am/a;->a:I

    return-void
.end method

.method private a(Landroid/view/Window;)V
    .locals 2

    .line 37
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 40
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const v0, 0x7f09021d

    .line 54
    invoke-virtual {p0, v0}, Lcn/nubia/camera/am/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method public show()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/am/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/am/a;->a(Landroid/view/Window;)V

    return-void
.end method
