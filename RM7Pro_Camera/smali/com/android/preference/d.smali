.class public Lcom/android/preference/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 28
    iput-object v0, p0, Lcom/android/preference/d;->a:[I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/preference/d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/android/preference/d;->b:I

    return v0
.end method

.method public a(I)V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/android/preference/d;->a:[I

    array-length v1, v0

    iget v2, p0, Lcom/android/preference/d;->b:I

    if-ne v1, v2, :cond_0

    add-int v1, v2, v2

    .line 33
    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 34
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object v1, p0, Lcom/android/preference/d;->a:[I

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/preference/d;->a:[I

    iget v1, p0, Lcom/android/preference/d;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/preference/d;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public a([I)[I
    .locals 3

    if-eqz p1, :cond_0

    .line 54
    array-length v0, p1

    iget v1, p0, Lcom/android/preference/d;->b:I

    if-ge v0, v1, :cond_1

    .line 55
    :cond_0
    iget p1, p0, Lcom/android/preference/d;->b:I

    new-array p1, p1, [I

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/preference/d;->a:[I

    iget v1, p0, Lcom/android/preference/d;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
