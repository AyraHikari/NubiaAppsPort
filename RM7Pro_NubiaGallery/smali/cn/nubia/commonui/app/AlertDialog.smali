.class public Lcn/nubia/commonui/app/AlertDialog;
.super Lcn/nubia/commonui/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final LAYOUT_HINT_NONE:I = 0x0

.field public static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field private mAlert:Lcn/nubia/commonui/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 82
    invoke-static {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 98
    invoke-static {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 101
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p2, "alwaysReadCloseOnTouchAttr"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 102
    new-instance p1, Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p1, p2, p0, p3}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    .line 103
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 107
    invoke-static {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "alwaysReadCloseOnTouchAttr"

    invoke-static {v1, v2, v0, v0}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 110
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 111
    invoke-virtual {p0, p3}, Lcn/nubia/commonui/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 112
    new-instance p2, Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p2, p1, p0, p3}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    .line 113
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertController;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    return-object p0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2

    .line 381
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 382
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 383
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 384
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 386
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 387
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    return p1

    .line 120
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x1010309

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 123
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public getAlertController()Lcn/nubia/commonui/app/AlertController;
    .locals 1

    .line 378
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 147
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 356
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 357
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertController;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 363
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnimPanelBackground(I)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setAnimPanelBackground(I)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 267
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 235
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    .line 280
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    .line 244
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    .line 293
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    .line 253
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButtonBackground(III)V
    .locals 1

    const v0, 0x7f080160

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    if-nez p2, :cond_1

    move p2, v0

    :cond_1
    if-nez p3, :cond_2

    move p3, v0

    .line 310
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/commonui/app/AlertController;->setNubiaButtonBackground(III)V

    .line 311
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertController;->resetNubiaAlertDialogLayout()V

    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setButtonPanelLayoutHint(I)V

    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->setButtonTextColor(II)V

    return-void
.end method

.method public setContentDividerVisible(Z)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setContentDivider(Z)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3

    .line 345
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 346
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 347
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method public setMaxHeightRatio(F)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setMaxHeightRatio(F)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParentPanelMargin(IIII)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/commonui/app/AlertController;->setParentPanelMargin(IIII)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

    .line 186
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;IIII)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 374
    invoke-super {p0}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 375
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    return-void
.end method
