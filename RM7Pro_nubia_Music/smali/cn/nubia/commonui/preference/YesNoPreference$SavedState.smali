.class Lcn/nubia/commonui/preference/YesNoPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "YesNoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/preference/YesNoPreference;
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
            "Lcn/nubia/commonui/preference/YesNoPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/preference/YesNoPreference$SavedState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;->a:Z

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 140
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 135
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
