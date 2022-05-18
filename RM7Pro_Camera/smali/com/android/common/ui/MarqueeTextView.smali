.class public Lcom/android/common/ui/MarqueeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lcom/android/common/ui/MarqueeTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/common/ui/MarqueeTextView;->setFocusable(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/common/ui/MarqueeTextView;->setFocusableInTouchMode(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/android/common/ui/MarqueeTextView;->setSingleLine()V

    .line 29
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, -0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/common/ui/MarqueeTextView;->setMarqueeRepeatLimit(I)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 36
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
