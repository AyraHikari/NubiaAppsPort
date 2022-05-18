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

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3

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

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    return-object v0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 327
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 328
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 332
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$style;->Animation_NubiaDialog_AlertInCenter:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 334
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 98
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 104
    :goto_0
    return p1

    .line 101
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 102
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

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 304
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->installContent()V

    .line 305
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 310
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
    .line 315
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 316
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
    .line 203
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 204
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 231
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setButtonPanelLayoutHint(I)V

    .line 176
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setIcon(I)V

    .line 280
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 284
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 293
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 294
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setIcon(I)V

    .line 295
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setInverseBackgroundForced(Z)V

    .line 299
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

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

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->mAlert:Lcn/nubia/commonui/app/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

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
    .line 321
    invoke-super {p0}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 322
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 323
    return-void
.end method
