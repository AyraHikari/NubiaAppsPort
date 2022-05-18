.class public interface abstract Lcn/nubia/commonui/widget/WheelView$OnScrollListener;
.super Ljava/lang/Object;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/WheelView$OnScrollListener$ScrollState;
    }
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract onScrollStateChange(Lcn/nubia/commonui/widget/WheelView;I)V
    .param p2    # I
        .annotation build Lcn/nubia/commonui/widget/WheelView$OnScrollListener$ScrollState;
        .end annotation
    .end param
.end method
