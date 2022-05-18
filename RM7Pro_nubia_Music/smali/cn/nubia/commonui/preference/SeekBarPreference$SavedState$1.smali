.class final Lcn/nubia/commonui/preference/SeekBarPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;
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
        "Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;
    .locals 1

    .prologue
    .line 202
    new-array v0, p1, [Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState$1;->a(Landroid/os/Parcel;)Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState$1;->a(I)[Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
