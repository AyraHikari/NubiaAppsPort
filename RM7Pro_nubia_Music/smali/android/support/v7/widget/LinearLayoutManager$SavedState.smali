.class public Landroid/support/v7/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/widget/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2336
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2302
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 2306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 2307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 2308
    return-void

    .line 2307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V
    .locals 1

    .prologue
    .line 2310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 2312
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 2313
    iget-boolean v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 2314
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 2317
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2321
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 2322
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2326
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2331
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2332
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2334
    return-void

    .line 2333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
