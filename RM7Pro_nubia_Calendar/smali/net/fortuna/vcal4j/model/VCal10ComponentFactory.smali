.class public Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;
.super Lnet/fortuna/ical4j/model/ComponentFactory;
.source "VCal10ComponentFactory.java"


# static fields
.field private static final ALLOW_ILLEGAL_NAMES:Z = true

.field private static instance:Lnet/fortuna/ical4j/model/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;-><init>()V

    sput-object v0, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;->instance:Lnet/fortuna/ical4j/model/ComponentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ComponentFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/model/ComponentFactory;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;->instance:Lnet/fortuna/ical4j/model/ComponentFactory;

    return-object v0
.end method

.method private isExperimentalName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "X-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected allowIllegalNames()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public createComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;->createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "component":Lnet/fortuna/ical4j/model/Component;
    const-string v1, "VEVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Lnet/fortuna/vcal4j/model/VCal10VEvent;

    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    invoke-direct {v0, p1, p2}, Lnet/fortuna/vcal4j/model/VCal10VEvent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 56
    .restart local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;->allowIllegalNames()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    new-instance v0, Lnet/fortuna/ical4j/model/component/XComponent;

    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .restart local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal component ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/Component;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;
    .param p3, "components"    # Lnet/fortuna/ical4j/model/ComponentList;

    .prologue
    .line 69
    if-eqz p3, :cond_2

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "component":Lnet/fortuna/ical4j/model/Component;
    const-string v1, "VEVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lnet/fortuna/vcal4j/model/VCal10VEvent;

    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    invoke-direct {v0, p2}, Lnet/fortuna/vcal4j/model/VCal10VEvent;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 84
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;->allowIllegalNames()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    new-instance v0, Lnet/fortuna/ical4j/model/component/XComponent;

    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .restart local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal component ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;->createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    goto :goto_0
.end method
