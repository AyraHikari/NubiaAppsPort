.class Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;
.super Lcn/nubia/commonui/v7/preference/Preference$BaseSavedState;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .local v0, "size":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    .line 247
    new-array v1, v0, [Ljava/lang/String;

    .line 248
    .local v1, "strings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 255
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 259
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/v7/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 260
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 262
    return-void
.end method
