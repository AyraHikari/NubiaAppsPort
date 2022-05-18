.class public Lcom/zte/mifavor/widget/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final LAYOUT_HINT_NONE:I = 0x0

.field public static final LAYOUT_HINT_SIDE:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_DARK:I = 0x4

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x5

.field public static final THEME_HOLO_DARK:I = 0x2

.field public static final THEME_HOLO_LIGHT:I = 0x3

.field public static final THEME_TRADITIONAL:I = 0x1


# instance fields
.field private mAlert:Lcom/zte/mifavor/widget/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 108
    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 124
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 126
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 127
    new-instance p1, Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p1, p2, p0, p3}, Lcom/zte/mifavor/widget/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 132
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 133
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setCancelable(Z)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 135
    new-instance p2, Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p2, p1, p0, p3}, Lcom/zte/mifavor/widget/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/AlertDialog;)Lcom/zte/mifavor/widget/AlertController;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    return-object p0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    .line 139
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lcom/zte/extres/R$attr;->alertDialogThemeMfv:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 142
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 349
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertController;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 355
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 361
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 245
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1

    .line 231
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 286
    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 254
    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    .line 300
    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    .line 263
    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    .line 314
    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    .line 272
    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setButtonPanelLayoutHint(I)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3

    .line 337
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 338
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 339
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setIcon(I)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setTitleColor(I)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/AlertController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/AlertController;->setView(Landroid/view/View;IIII)V

    return-void
.end method
