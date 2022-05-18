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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 84
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-static {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 102
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "alwaysReadCloseOnTouchAttr"

    invoke-static {v0, v1, v2, v2}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 103
    new-instance v0, Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    .line 104
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {p1, v2}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 110
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "alwaysReadCloseOnTouchAttr"

    invoke-static {v0, v1, v2, v2}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 112
    invoke-virtual {p0, p3}, Lcn/nubia/commonui/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 113
    new-instance v0, Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    .line 114
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertDialog;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    return-object v0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 375
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 376
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 379
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 380
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    :cond_0
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 118
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 124
    .end local p1    # "resid":I
    :goto_0
    return p1

    .line 121
    .restart local p1    # "resid":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 122
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 124
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getAlertController()Lcn/nubia/commonui/app/AlertController;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 350
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->installContent()V

    .line 351
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 355
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 356
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
    .line 361
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 362
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
    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setAnimPanelBackground(I)V

    .line 299
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 227
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 228
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 214
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 269
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 282
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 246
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 295
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 255
    return-void
.end method

.method public setButtonBackground(III)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "mid"    # I
    .param p3, "right"    # I

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    sget p1, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    .line 305
    :cond_0
    if-nez p2, :cond_1

    .line 306
    sget p2, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    .line 308
    :cond_1
    if-nez p3, :cond_2

    .line 309
    sget p3, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    .line 311
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/commonui/app/AlertController;->setNubiaButtonBackground(III)V

    .line 312
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 313
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setButtonPanelLayoutHint(I)V

    .line 200
    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "color"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->setButtonTextColor(II)V

    .line 317
    return-void
.end method

.method public setContentDividerVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setContentDivider(Z)V

    .line 192
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    .line 326
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 329
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 330
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 338
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 339
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 340
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    .line 341
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 345
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;)V

    .line 173
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
    .line 187
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 188
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 368
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 369
    return-void
.end method
