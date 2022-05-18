.class public Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
.super Ljava/lang/Object;
.source "TimezoneAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/TimezoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimezoneRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private mGmtDisplayName:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field private final mOffset:I

.field private final mUseDaylightTime:Z

.field final synthetic this$0:Lcn/nubia/calendar/TimezoneAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/TimezoneAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcn/nubia/calendar/TimezoneAdapter;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->this$0:Lcn/nubia/calendar/TimezoneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    .line 81
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 82
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mUseDaylightTime:Z

    .line 83
    invoke-static {p1}, Lcn/nubia/calendar/TimezoneAdapter;->access$000(Lcn/nubia/calendar/TimezoneAdapter;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    .line 84
    return-void
.end method


# virtual methods
.method public buildGmtDisplayName()V
    .locals 8

    .prologue
    .line 99
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 130
    :goto_0
    return-void

    .line 103
    :cond_0
    iget v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 104
    .local v2, "p":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v1, "name":Ljava/lang/StringBuilder;
    const-string v3, "GMT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-gez v3, :cond_3

    .line 108
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :goto_1
    int-to-long v4, v2

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    const v3, 0xea60

    div-int v0, v2, v3

    .line 117
    .local v0, "min":I
    rem-int/lit8 v0, v0, 0x3c

    .line 119
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 120
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const/4 v3, 0x0

    const-string v4, "("

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-boolean v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mUseDaylightTime:Z

    if-eqz v3, :cond_2

    .line 127
    const-string v3, " \u2600"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 110
    .end local v0    # "min":I
    :cond_3
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public compareTo(Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;)I
    .locals 2
    .param p1, "another"    # Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    .prologue
    .line 177
    iget v0, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ne v0, v1, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->compareTo(Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 149
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 152
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 154
    check-cast v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    .line 155
    .local v0, "other":Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 156
    iget-object v3, v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_4
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 160
    goto :goto_0

    .line 162
    :cond_5
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 163
    iget-object v3, v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_6
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 167
    goto :goto_0

    .line 169
    :cond_7
    iget v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v4, v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 170
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 134
    const/16 v0, 0x1f

    .line 135
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 136
    .local v1, "result":I
    iget-object v2, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    .line 137
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 138
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 139
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    add-int v1, v2, v3

    .line 140
    return v1

    .line 136
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 138
    :cond_1
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->buildGmtDisplayName()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    return-object v0
.end method
