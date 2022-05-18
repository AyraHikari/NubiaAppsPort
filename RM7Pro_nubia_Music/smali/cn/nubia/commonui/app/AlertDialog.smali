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

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3

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

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    return-object v0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 349
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 350
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 353
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 118
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 124
    :goto_0
    return p1

    .line 121
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 122
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
    .line 345
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

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

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 324
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->installContent()V

    .line 325
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 224
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 265
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 233
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 277
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 278
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 242
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 291
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 251
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setButtonPanelLayoutHint(I)V

    .line 196
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    .line 300
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 314
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    .line 315
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 319
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

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

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

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
    .line 341
    invoke-super {p0}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 342
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 343
    return-void
.end method
