.class final Lcn/nubia/commonui/preference/ListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/preference/ListPreference$SavedState;
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
        "Lcn/nubia/commonui/preference/ListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/commonui/preference/ListPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 354
    new-instance v0, Lcn/nubia/commonui/preference/ListPreference$SavedState;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/ListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/commonui/preference/ListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/commonui/preference/ListPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 358
    new-array v0, p1, [Lcn/nubia/commonui/preference/ListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/ListPreference$SavedState$1;->newArray(I)[Lcn/nubia/commonui/preference/ListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
