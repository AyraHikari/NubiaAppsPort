.class public Lnet/fortuna/ical4j/model/property/ExRule;
.super Lnet/fortuna/ical4j/model/Property;
.source "ExRule.java"


# static fields
.field private static final serialVersionUID:J = -0x7f46a02bd199a5deL


# instance fields
.field private recur:Lnet/fortuna/ical4j/model/Recur;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "EXRULE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 61
    new-instance v0, Lnet/fortuna/ical4j/model/Recur;

    const-string v1, "DAILY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/Recur;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/ExRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    .line 62
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "EXRULE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 73
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/ExRule;->setValue(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Recur;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aRecur"    # Lnet/fortuna/ical4j/model/Recur;

    .prologue
    .line 89
    const-string v0, "EXRULE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 90
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/ExRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    .line 91
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Recur;)V
    .locals 2
    .param p1, "aRecur"    # Lnet/fortuna/ical4j/model/Recur;

    .prologue
    .line 80
    const-string v0, "EXRULE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 81
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/ExRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    .line 82
    return-void
.end method


# virtual methods
.method public final getRecur()Lnet/fortuna/ical4j/model/Recur;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/ExRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/ExRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Recur;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setRecur(Lnet/fortuna/ical4j/model/Recur;)V
    .locals 0
    .param p1, "recur"    # Lnet/fortuna/ical4j/model/Recur;

    .prologue
    .line 118
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/ExRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    .line 119
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/Recur;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/ExRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    .line 105
    return-void
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 126
    return-void
.end method
