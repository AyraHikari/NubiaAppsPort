.class final Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
    .locals 2

    .prologue
    .line 1567
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;)V

    return-object v0
.end method

.method public a(I)[Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
    .locals 1

    .prologue
    .line 1571
    new-array v0, p1, [Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1565
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState$1;->a(Landroid/os/Parcel;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1565
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState$1;->a(I)[Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    move-result-object v0

    return-object v0
.end method
