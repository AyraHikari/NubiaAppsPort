.class public abstract Lnet/fortuna/ical4j/model/component/CalendarComponent;
.super Lnet/fortuna/ical4j/model/Component;
.source "CalendarComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/CalendarComponent$EmptyValidator;
    }
.end annotation


# static fields
.field protected static final EMPTY_VALIDATOR:Lnet/fortuna/ical4j/model/Validator;

.field private static final serialVersionUID:J = -0x50f2e1ab19436f10L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lnet/fortuna/ical4j/model/component/CalendarComponent$EmptyValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/CalendarComponent$EmptyValidator;-><init>(Lnet/fortuna/ical4j/model/component/CalendarComponent$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/component/CalendarComponent;->EMPTY_VALIDATOR:Lnet/fortuna/ical4j/model/Validator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected abstract getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
.end method

.method public final validate(Lnet/fortuna/ical4j/model/property/Method;)V
    .locals 4
    .param p1, "method"    # Lnet/fortuna/ical4j/model/property/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;

    move-result-object v0

    .line 82
    .local v0, "validator":Lnet/fortuna/ical4j/model/Validator;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lnet/fortuna/ical4j/model/Validator;->validate()V

    .line 88
    return-void

    .line 86
    :cond_0
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final validateAdd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    .line 130
    return-void
.end method

.method public final validateCancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    .line 139
    return-void
.end method

.method public final validateCounter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    .line 157
    return-void
.end method

.method public final validateDeclineCounter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    .line 166
    return-void
.end method

.method public final validatePublish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    .line 103
    return-void
.end method

.method public final validateRefresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    .line 148
    return-void
.end method

.method public final validateReply()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    .line 121
    return-void
.end method

.method public final validateRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    .line 112
    return-void
.end method
