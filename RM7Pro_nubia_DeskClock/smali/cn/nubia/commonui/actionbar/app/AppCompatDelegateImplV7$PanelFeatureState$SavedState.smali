.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
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
            "Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1760
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;

    .prologue
    .line 1730
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Landroid/os/Parcel;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1730
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    .locals 3
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 1749
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;-><init>()V

    .line 1750
    .local v0, "savedState":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->featureId:I

    .line 1751
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    .line 1753
    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 1754
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 1757
    :cond_0
    return-object v0

    .line 1751
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1736
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1740
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1741
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1743
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1746
    :cond_0
    return-void

    .line 1741
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
