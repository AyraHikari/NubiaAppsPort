.class final Lcom/zte/mifavor/widget/DatePickerZTE$SavedState$1;
.super Ljava/lang/Object;
.source "DatePickerZTE.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;
    .locals 1

    .line 896
    new-instance p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;-><init>(Landroid/os/Parcel;Lcom/zte/mifavor/widget/DatePickerZTE$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 893
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;
    .locals 0

    .line 900
    new-array p0, p1, [Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 893
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState$1;->newArray(I)[Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;

    move-result-object p0

    return-object p0
.end method
