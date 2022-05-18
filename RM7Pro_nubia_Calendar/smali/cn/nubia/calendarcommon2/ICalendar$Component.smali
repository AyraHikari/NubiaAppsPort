.class public Lcn/nubia/calendarcommon2/ICalendar$Component;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# static fields
.field static final BEGIN:Ljava/lang/String; = "BEGIN"

.field static final END:Ljava/lang/String; = "END"

.field private static final NEWLINE:Ljava/lang/String; = "\n"

.field public static final VALARM:Ljava/lang/String; = "VALARM"

.field public static final VCALENDAR:Ljava/lang/String; = "VCALENDAR"

.field public static final VEVENT:Ljava/lang/String; = "VEVENT"

.field public static final VFREEBUSY:Ljava/lang/String; = "VFREEBUSY"

.field public static final VJOURNAL:Ljava/lang/String; = "VJOURNAL"

.field public static final VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field public static final VTODO:Ljava/lang/String; = "VTODO"


# instance fields
.field private mChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendarcommon2/ICalendar$Component;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mParent:Lcn/nubia/calendarcommon2/ICalendar$Component;

.field private final mPropsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendarcommon2/ICalendar$Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/calendarcommon2/ICalendar$Component;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Lcn/nubia/calendarcommon2/ICalendar$Component;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    .line 76
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    .line 84
    iput-object p1, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mParent:Lcn/nubia/calendarcommon2/ICalendar$Component;

    .line 86
    return-void
.end method


# virtual methods
.method public addChild(Lcn/nubia/calendarcommon2/ICalendar$Component;)V
    .locals 1
    .param p1, "child"    # Lcn/nubia/calendarcommon2/ICalendar$Component;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getOrCreateChildren()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public addProperty(Lcn/nubia/calendarcommon2/ICalendar$Property;)V
    .locals 3
    .param p1, "prop"    # Lcn/nubia/calendarcommon2/ICalendar$Property;

    .prologue
    .line 138
    invoke-virtual {p1}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getName()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 140
    .local v1, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendarcommon2/ICalendar$Property;>;"
    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendarcommon2/ICalendar$Property;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .restart local v1    # "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendarcommon2/ICalendar$Property;>;"
    iget-object v2, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendarcommon2/ICalendar$Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getFirstProperty(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Property;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 173
    .local v0, "props":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendarcommon2/ICalendar$Property;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    const/4 v1, 0x0

    .line 176
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendarcommon2/ICalendar$Property;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getOrCreateChildren()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendarcommon2/ICalendar$Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    .line 112
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getParent()Lcn/nubia/calendarcommon2/ICalendar$Component;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mParent:Lcn/nubia/calendarcommon2/ICalendar$Component;

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendarcommon2/ICalendar$Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPropertyNames()Ljava/util/Set;
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
    .line 152
    iget-object v0, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcn/nubia/calendarcommon2/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    .line 183
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 193
    const-string v3, "BEGIN"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v3, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendarcommon2/ICalendar$Property;

    .line 201
    .local v1, "property":Lcn/nubia/calendarcommon2/ICalendar$Property;
    invoke-virtual {v1, p1}, Lcn/nubia/calendarcommon2/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    .line 202
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    .end local v1    # "property":Lcn/nubia/calendarcommon2/ICalendar$Property;
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendarcommon2/ICalendar$Component;

    .line 209
    .local v0, "component":Lcn/nubia/calendarcommon2/ICalendar$Component;
    invoke-virtual {v0, p1}, Lcn/nubia/calendarcommon2/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    .line 210
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    .end local v0    # "component":Lcn/nubia/calendarcommon2/ICalendar$Component;
    :cond_2
    const-string v3, "END"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v3, p0, Lcn/nubia/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    return-void
.end method
