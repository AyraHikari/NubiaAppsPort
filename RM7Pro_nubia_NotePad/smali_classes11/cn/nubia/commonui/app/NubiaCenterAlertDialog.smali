.class public Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
.super Lcn/nubia/commonui/app/Dialog;
.source "NubiaCenterAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final LAYOUT_HINT_NONE:I = 0x0

.field public static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field private mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-static {p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "alwaysReadCloseOnTouchAttr"

    invoke-static {v0, v1, v2, v2}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    .line 84
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 85
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {p1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "alwaysReadCloseOnTouchAttr"

    invoke-static {v0, v1, v2, v2}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setCancelable(Z)V

    .line 92
    invoke-virtual {p0, p3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 93
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    .line 94
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/NubiaCenterAlertDialog;)Lcn/nubia/commonui/app/NubiaCenterAlertController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    return-object v0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 361
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 362
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 365
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 366
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$style;->Animation_NubiaDialog_AlertInCenter:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 368
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 98
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 104
    .end local p1    # "resid":I
    :goto_0
    return p1

    .line 101
    .restart local p1    # "resid":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 102
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 338
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->installContent()V

    .line 339
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 343
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 349
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAnimPanelBackground(I)V
    .locals 1
    .param p1, "colorId"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setAnimPanelBackground(I)V

    .line 275
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 203
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 204
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 189
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 190
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 245
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 213
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 258
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 222
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 271
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 231
    return-void
.end method

.method public setButtonBackground(III)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "mid"    # I
    .param p3, "right"    # I

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    sget p1, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    .line 281
    :cond_0
    if-nez p2, :cond_1

    .line 282
    sget p2, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    .line 284
    :cond_1
    if-nez p3, :cond_2

    .line 285
    sget p3, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    .line 287
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setNubiaButtonBackground(III)V

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->resetNubiaAlertDialogLayout()V

    .line 289
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setButtonPanelLayoutHint(I)V

    .line 176
    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "color"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setButtonTextColor(II)V

    .line 293
    return-void
.end method

.method public setChoiceTitle(Z)V
    .locals 1
    .param p1, "choiceTitle"    # Z

    .prologue
    .line 304
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setChoiceTitle(Z)V

    .line 305
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setIcon(I)V

    .line 314
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 317
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 318
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 326
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 327
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 328
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setIcon(I)V

    .line 329
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setInverseBackgroundForced(Z)V

    .line 333
    return-void
.end method

.method public setMaxHeightRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 296
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setMaxHeightRatio(F)V

    .line 297
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setParentPanelMargin(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setParentPanelMargin(IIII)V

    .line 301
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setView(Landroid/view/View;IIII)V

    .line 168
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 356
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 357
    return-void
.end method
