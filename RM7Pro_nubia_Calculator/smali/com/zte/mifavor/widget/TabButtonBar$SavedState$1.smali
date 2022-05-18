.class final Lcom/zte/mifavor/widget/TabButtonBar$SavedState$1;
.super Ljava/lang/Object;
.source "TabButtonBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/TabButtonBar$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zte/mifavor/widget/TabButtonBar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/widget/TabButtonBar$SavedState;
    .locals 0

    .line 1171
    new-instance p0, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1167
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TabButtonBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/widget/TabButtonBar$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/zte/mifavor/widget/TabButtonBar$SavedState;
    .locals 0

    .line 1176
    new-array p0, p1, [Lcom/zte/mifavor/widget/TabButtonBar$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1167
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TabButtonBar$SavedState$1;->newArray(I)[Lcom/zte/mifavor/widget/TabButtonBar$SavedState;

    move-result-object p0

    return-object p0
.end method
