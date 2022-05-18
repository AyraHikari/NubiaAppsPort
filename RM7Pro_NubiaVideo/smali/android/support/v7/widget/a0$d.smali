.class Landroid/support/v7/widget/a0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v7/widget/a0$d;",
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

    .line 1
    new-instance v0, Landroid/support/v7/widget/a0$d$a;

    invoke-direct {v0}, Landroid/support/v7/widget/a0$d$a;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a0$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a0$d;->a:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a0$d;->b:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/a0$d;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/a0$d;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Landroid/support/v7/widget/a0$d;->a:I

    iput v0, p0, Landroid/support/v7/widget/a0$d;->a:I

    .line 8
    iget v0, p1, Landroid/support/v7/widget/a0$d;->b:I

    iput v0, p0, Landroid/support/v7/widget/a0$d;->b:I

    .line 9
    iget-boolean p1, p1, Landroid/support/v7/widget/a0$d;->c:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/a0$d;->c:Z

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0$d;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroid/support/v7/widget/a0$d;->a:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/support/v7/widget/a0$d;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/support/v7/widget/a0$d;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-boolean p2, p0, Landroid/support/v7/widget/a0$d;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
