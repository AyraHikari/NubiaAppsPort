.class public final Lcom/google/android/material/picker/CalendarBounds;
.super Ljava/lang/Object;
.source "CalendarBounds.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/picker/CalendarBounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final current:Lcom/google/android/material/picker/Month;

.field private final end:Lcom/google/android/material/picker/Month;

.field private final start:Lcom/google/android/material/picker/Month;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/google/android/material/picker/CalendarBounds$1;

    invoke-direct {v0}, Lcom/google/android/material/picker/CalendarBounds$1;-><init>()V

    sput-object v0, Lcom/google/android/material/picker/CalendarBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/material/picker/CalendarBounds;->start:Lcom/google/android/material/picker/Month;

    .line 38
    iput-object p2, p0, Lcom/google/android/material/picker/CalendarBounds;->end:Lcom/google/android/material/picker/Month;

    .line 39
    iput-object p3, p0, Lcom/google/android/material/picker/CalendarBounds;->current:Lcom/google/android/material/picker/Month;

    .line 40
    invoke-virtual {p1, p3}, Lcom/google/android/material/picker/Month;->compareTo(Lcom/google/android/material/picker/Month;)I

    move-result p0

    if-gtz p0, :cond_1

    .line 43
    invoke-virtual {p3, p2}, Lcom/google/android/material/picker/Month;->compareTo(Lcom/google/android/material/picker/Month;)I

    move-result p0

    if-gtz p0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "current Month cannot be after end Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "start Month cannot be after current Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)Lcom/google/android/material/picker/CalendarBounds;
    .locals 2

    .line 61
    invoke-static {}, Lcom/google/android/material/picker/Month;->today()Lcom/google/android/material/picker/Month;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/Month;->compareTo(Lcom/google/android/material/picker/Month;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/material/picker/Month;->compareTo(Lcom/google/android/material/picker/Month;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/android/material/picker/CalendarBounds;

    invoke-static {}, Lcom/google/android/material/picker/Month;->today()Lcom/google/android/material/picker/Month;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/picker/CalendarBounds;-><init>(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)V

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lcom/google/android/material/picker/CalendarBounds;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/android/material/picker/CalendarBounds;-><init>(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)V

    return-object v0
.end method

.method public static create(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)Lcom/google/android/material/picker/CalendarBounds;
    .locals 1

    .line 53
    new-instance v0, Lcom/google/android/material/picker/CalendarBounds;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/picker/CalendarBounds;-><init>(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/picker/CalendarBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 91
    :cond_1
    check-cast p1, Lcom/google/android/material/picker/CalendarBounds;

    .line 92
    iget-object v1, p0, Lcom/google/android/material/picker/CalendarBounds;->start:Lcom/google/android/material/picker/Month;

    iget-object v3, p1, Lcom/google/android/material/picker/CalendarBounds;->start:Lcom/google/android/material/picker/Month;

    invoke-virtual {v1, v3}, Lcom/google/android/material/picker/Month;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/picker/CalendarBounds;->end:Lcom/google/android/material/picker/Month;

    iget-object v3, p1, Lcom/google/android/material/picker/CalendarBounds;->end:Lcom/google/android/material/picker/Month;

    invoke-virtual {v1, v3}, Lcom/google/android/material/picker/Month;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/picker/CalendarBounds;->current:Lcom/google/android/material/picker/Month;

    iget-object p1, p1, Lcom/google/android/material/picker/CalendarBounds;->current:Lcom/google/android/material/picker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/Month;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCurrent()Lcom/google/android/material/picker/Month;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/android/material/picker/CalendarBounds;->current:Lcom/google/android/material/picker/Month;

    return-object p0
.end method

.method public getEnd()Lcom/google/android/material/picker/Month;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/material/picker/CalendarBounds;->end:Lcom/google/android/material/picker/Month;

    return-object p0
.end method

.method public getStart()Lcom/google/android/material/picker/Month;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/android/material/picker/CalendarBounds;->start:Lcom/google/android/material/picker/Month;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/material/picker/CalendarBounds;->start:Lcom/google/android/material/picker/Month;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/material/picker/CalendarBounds;->end:Lcom/google/android/material/picker/Month;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/material/picker/CalendarBounds;->current:Lcom/google/android/material/picker/Month;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 98
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 127
    iget-object p2, p0, Lcom/google/android/material/picker/CalendarBounds;->start:Lcom/google/android/material/picker/Month;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget-object p2, p0, Lcom/google/android/material/picker/CalendarBounds;->end:Lcom/google/android/material/picker/Month;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    iget-object p0, p0, Lcom/google/android/material/picker/CalendarBounds;->current:Lcom/google/android/material/picker/Month;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
