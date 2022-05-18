.class final Lcn/nubia/calendar/EventInfoFragment$17;
.super Landroid/text/style/ClickableSpan;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->addSearchBehaviorToTextView(Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2219
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$17;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/calendar/EventInfoFragment$17;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 2229
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$17;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$17;->val$text:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->searchInfoByAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 2230
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 2223
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 2224
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2225
    return-void
.end method
