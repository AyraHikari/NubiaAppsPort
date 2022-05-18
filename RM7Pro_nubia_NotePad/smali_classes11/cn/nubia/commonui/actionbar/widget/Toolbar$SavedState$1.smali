.class final Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;
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
        "Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1901
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1897
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1906
    new-array v0, p1, [Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1897
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState$1;->newArray(I)[Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    move-result-object v0

    return-object v0
.end method
