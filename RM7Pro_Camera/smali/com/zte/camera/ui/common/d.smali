.class public Lcom/zte/camera/ui/common/d;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setClickable(Z)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    .line 27
    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/d;->setAlpha(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    .line 29
    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/d;->setAlpha(I)V

    :goto_0
    return-void
.end method
