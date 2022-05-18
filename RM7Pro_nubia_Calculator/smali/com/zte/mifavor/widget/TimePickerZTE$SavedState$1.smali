.class final Lcom/zte/mifavor/widget/TimePickerZTE$SavedState$1;
.super Ljava/lang/Object;
.source "TimePickerZTE.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;
    .locals 1

    .line 855
    new-instance p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;-><init>(Landroid/os/Parcel;Lcom/zte/mifavor/widget/TimePickerZTE$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;
    .locals 0

    .line 859
    new-array p0, p1, [Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState$1;->newArray(I)[Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    move-result-object p0

    return-object p0
.end method
