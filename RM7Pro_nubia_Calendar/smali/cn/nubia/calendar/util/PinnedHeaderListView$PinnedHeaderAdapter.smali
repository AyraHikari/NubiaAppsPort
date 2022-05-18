.class public interface abstract Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;
.super Ljava/lang/Object;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/PinnedHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PinnedHeaderAdapter"
.end annotation


# static fields
.field public static final PINNED_HEADER_GONE:I = 0x0

.field public static final PINNED_HEADER_PUSHED_UP:I = 0x2

.field public static final PINNED_HEADER_VISIBLE:I = 0x1


# virtual methods
.method public abstract configurePinnedHeader(Landroid/view/View;II)V
.end method

.method public abstract getPinnedHeaderState(I)I
.end method
