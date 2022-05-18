.class public Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/model/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReminderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final mMethod:I

.field private final mMinutes:I

.field private mPhoneNumbers:Ljava/lang/String;


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "minutes"    # I
    .param p2, "method"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    .line 166
    iput p2, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    .line 167
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "minutes"    # I
    .param p2, "method"    # I
    .param p3, "receivers"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    .line 173
    iput p2, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    .line 174
    iput-object p3, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public static valueOf(I)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    .locals 1
    .param p0, "minutes"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(II)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(II)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    .locals 1
    .param p0, "minutes"    # I
    .param p1, "method"    # I

    .prologue
    .line 139
    new-instance v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    invoke-direct {v0, p0, p1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;-><init>(II)V

    return-object v0
.end method

.method public static valueOf(IILjava/lang/String;)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    .locals 1
    .param p0, "minutes"    # I
    .param p1, "method"    # I
    .param p2, "receivers"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;)I
    .locals 2
    .param p1, "re"    # Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .prologue
    .line 262
    iget v0, p1, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-eq v0, v1, :cond_0

    .line 263
    iget v0, p1, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    sub-int/2addr v0, v1

    .line 268
    :goto_0
    return v0

    .line 265
    :cond_0
    iget v0, p1, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v0, v1, :cond_1

    .line 266
    iget v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v1, p1, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->compareTo(Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    instance-of v3, p1, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 224
    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 226
    .local v0, "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    iget v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v4, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-ne v3, v4, :cond_0

    .line 231
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 232
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    :cond_2
    iget v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v4, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v3, v4, :cond_4

    iget v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v3, :cond_3

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v3, v2, :cond_4

    :cond_3
    iget v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 235
    :cond_5
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 237
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public equalsNoPhones(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 194
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    instance-of v3, p1, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 200
    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 202
    .local v0, "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    iget v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v4, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-ne v3, v4, :cond_0

    .line 207
    iget v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v4, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v3, v4, :cond_3

    iget v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v3, :cond_2

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v3, v2, :cond_3

    :cond_2
    iget v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    return v0
.end method

.method public getPhoneNumbers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setPhoneNumbers(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumbers"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mPhoneNumbers:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReminderEntry min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " meth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
