.class Landroid/support/v7/widget/RecyclerView$u;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "u"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$u$a;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$u$a;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView$u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    const-class v0, Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/os/Parcelable;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$u;->b(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/os/Parcelable;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
