.class Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"

# interfaces
.implements Lnet/fortuna/ical4j/data/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentHandlerImpl"
.end annotation


# instance fields
.field private componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

.field private final parameterFactory:Lnet/fortuna/ical4j/model/ParameterFactory;

.field private propertyFactory:Lnet/fortuna/ical4j/model/PropertyFactory;

.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/ComponentFactory;Lnet/fortuna/ical4j/model/PropertyFactory;Lnet/fortuna/ical4j/model/ParameterFactory;)V
    .locals 0
    .param p2, "componentFactory"    # Lnet/fortuna/ical4j/model/ComponentFactory;
    .param p3, "propertyFactory"    # Lnet/fortuna/ical4j/model/PropertyFactory;
    .param p4, "parameterFactory"    # Lnet/fortuna/ical4j/model/ParameterFactory;

    .prologue
    .line 231
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

    .line 234
    iput-object p3, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->propertyFactory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 235
    iput-object p4, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->parameterFactory:Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 236
    return-void
.end method


# virtual methods
.method public endCalendar()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public endComponent(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    invoke-static {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$000(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Component;)V

    .line 245
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    .line 258
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iput-object v3, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    .line 268
    :goto_1
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VEvent;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VToDo;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VAvailability;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VAvailability;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getAvailable()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    .line 262
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$100(Lnet/fortuna/ical4j/data/CalendarBuilder;)Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$100(Lnet/fortuna/ical4j/data/CalendarBuilder;)Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/model/TimeZone;

    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/model/TimeZone;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V

    invoke-interface {v1, v2}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->register(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 266
    :cond_5
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iput-object v3, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    goto/16 :goto_1
.end method

.method public endProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-static {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$200(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;)V

    .line 274
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Constants;->forProperty(Lnet/fortuna/ical4j/model/Property;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    .line 276
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Version;->VERSION_1_0:Lnet/fortuna/ical4j/model/property/Version;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/model/PropertyFactoryImpl10;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->propertyFactory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 278
    invoke-static {}, Lnet/fortuna/vcal4j/model/VCal10ComponentFactory;->getInstance()Lnet/fortuna/ical4j/model/ComponentFactory;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

    .line 281
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 293
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    .line 294
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v3, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v3, v3, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-static {v2, v3}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$200(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;)V

    .line 300
    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->parameterFactory:Lnet/fortuna/ical4j/model/ParameterFactory;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lnet/fortuna/ical4j/model/ParameterFactory;->createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    .line 301
    .local v0, "param":Lnet/fortuna/ical4j/model/Parameter;
    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v2, v2, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 302
    instance-of v2, v0, Lnet/fortuna/ical4j/model/parameter/TzId;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-static {v2}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$100(Lnet/fortuna/ical4j/data/CalendarBuilder;)Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v2, v2, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    instance-of v2, v2, Lnet/fortuna/ical4j/model/property/XProperty;

    if-nez v2, :cond_0

    .line 303
    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-static {v2}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$100(Lnet/fortuna/ical4j/data/CalendarBuilder;)Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    .line 304
    .local v1, "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    if-eqz v1, :cond_1

    .line 305
    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v3, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v3, v3, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-static {v2, v3, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$300(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 313
    .end local v1    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    :cond_0
    :goto_0
    return-void

    .line 310
    .restart local v1    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    :cond_1
    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-static {v2}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$400(Lnet/fortuna/ical4j/data/CalendarBuilder;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v3, v3, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public propertyValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-static {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$200(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;)V

    .line 323
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/Escapable;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startCalendar()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    new-instance v1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/Calendar;-><init>()V

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    .line 336
    return-void
.end method

.method public startComponent(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    goto :goto_0
.end method

.method public startProperty(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->propertyFactory:Lnet/fortuna/ical4j/model/PropertyFactory;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    .line 356
    return-void
.end method
