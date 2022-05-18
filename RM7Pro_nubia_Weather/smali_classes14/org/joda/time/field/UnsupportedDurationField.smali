.class public final Lorg/joda/time/field/UnsupportedDurationField;
.super Lorg/joda/time/DurationField;
.source "UnsupportedDurationField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static cCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/joda/time/DurationFieldType;",
            "Lorg/joda/time/field/UnsupportedDurationField;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x58aee92d77607f2dL


# instance fields
.field private final iType:Lorg/joda/time/DurationFieldType;


# direct methods
.method private constructor <init>(Lorg/joda/time/DurationFieldType;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;
    .locals 3

    .prologue
    .line 49
    const-class v1, Lorg/joda/time/field/UnsupportedDurationField;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    .line 51
    const/4 v0, 0x0

    .line 55
    :goto_0
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/joda/time/field/UnsupportedDurationField;

    invoke-direct {v0, p0}, Lorg/joda/time/field/UnsupportedDurationField;-><init>(Lorg/joda/time/DurationFieldType;)V

    .line 57
    sget-object v2, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v1

    return-object v0

    .line 53
    :cond_1
    :try_start_1
    sget-object v0, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/field/UnsupportedDurationField;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method private unsupported()Ljava/lang/UnsupportedOperationException;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public add(JJ)J
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/UnsupportedDurationField;->compareTo(Lorg/joda/time/DurationField;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/DurationField;)I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    if-ne p0, p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    instance-of v2, p1, Lorg/joda/time/field/UnsupportedDurationField;

    if-eqz v2, :cond_3

    .line 241
    check-cast p1, Lorg/joda/time/field/UnsupportedDurationField;

    .line 242
    invoke-virtual {p1}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 243
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p1}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getMillis(I)J
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getMillis(IJ)J
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getMillis(J)J
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getMillis(JJ)J
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public getUnitMillis()J
    .locals 2

    .prologue
    .line 218
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getValue(J)I
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getValue(JJ)I
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getValueAsLong(J)J
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getValueAsLong(JJ)J
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPrecise()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedDurationField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
