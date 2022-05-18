.class public Lcom/android/common/ui/OpaqueTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 45
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
