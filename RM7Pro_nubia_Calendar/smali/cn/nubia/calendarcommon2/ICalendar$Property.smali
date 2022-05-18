.class public Lcn/nubia/calendarcommon2/ICalendar$Property;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field public static final DTEND:Ljava/lang/String; = "DTEND"

.field public static final DTSTART:Ljava/lang/String; = "DTSTART"

.field public static final DURATION:Ljava/lang/String; = "DURATION"

.field public static final EXDATE:Ljava/lang/String; = "EXDATE"

.field public static final EXRULE:Ljava/lang/String; = "EXRULE"

.field public static final RDATE:Ljava/lang/String; = "RDATE"

.field public static final RRULE:Ljava/lang/String; = "RRULE"


# instance fields
.field private final mName:Ljava/lang/String;

.field private mParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendarcommon2/ICalendar$Parameter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    .line 246
    iput-object p1, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mName:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    .line 255
    iput-object p1, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mName:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mValue:Ljava/lang/String;

    .line 257
    return-void
.end method


# virtual methods
.method public addParameter(Lcn/nubia/calendarcommon2/ICalendar$Parameter;)V
    .locals 3
    .param p1, "param"    # Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    .prologue
    .line 288
    iget-object v1, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcn/nubia/calendarcommon2/ICalendar$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 289
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendarcommon2/ICalendar$Parameter;>;"
    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendarcommon2/ICalendar$Parameter;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .restart local v0    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendarcommon2/ICalendar$Parameter;>;"
    iget-object v1, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcn/nubia/calendarcommon2/ICalendar$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method public getFirstParameter(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v1, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 322
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendarcommon2/ICalendar$Parameter;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_0
    const/4 v1, 0x0

    .line 325
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendarcommon2/ICalendar$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mValue:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 340
    iget-object v3, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 342
    .local v2, "parameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    .local v1, "parameterName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    .line 344
    .local v0, "param":Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0, p1}, Lcn/nubia/calendarcommon2/ICalendar$Parameter;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 348
    .end local v0    # "param":Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    .end local v1    # "parameterName":Ljava/lang/String;
    :cond_1
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v3, p0, Lcn/nubia/calendarcommon2/ICalendar$Property;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    return-void
.end method
